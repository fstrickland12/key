<title>Score Report</title>  
<link rel="stylesheet" type="text/css" href="styles.css">
<div id="header">

<header>
        <nav>
            Menu: <a href="index.php">Home</a> 
        </nav>
    </header>
    </div>

    <h1 style="text-align: center;">Score Report</h1>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection parameters
$hostname = 'peerappdb.mysql.database.azure.com';
$username = 'dbadmin';
$password = 'Pass123412341234';
$database = 'demo';

// Create a database connection
$connection = new mysqli($hostname, $username, $password, $database);

// Check for a successful connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
//Check team member number and completed evals based on contribution score
function hasCompletedEvaluations($userId, $connection) {
    // Count the number of team members in the user's group
    $teamCountSql = "SELECT COUNT(*) as teamCount FROM user_group_mapping WHERE group_id = (SELECT group_id FROM user_group_mapping WHERE user_id = ?)";
    $teamCount = 0;
    if ($stmt = $connection->prepare($teamCountSql)) {
        $stmt->bind_param("s", $userId);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($row = $result->fetch_assoc()) {
            $teamCount = $row['teamCount'];
        }
        $stmt->close();
    }

    // Count the number of evaluations completed by the user
    $evaluationCountSql = "SELECT COUNT(*) as evalCount FROM evaluations WHERE user_id = ? AND Contribution IS NOT NULL";
    $evalCount = 0;
    if ($stmt = $connection->prepare($evaluationCountSql)) {
        $stmt->bind_param("s", $userId);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($row = $result->fetch_assoc()) {
            $evalCount = $row['evalCount'];
        }
        $stmt->close();
    }

    // Check if the user has evaluated all team members except themselves
    return $evalCount >= ($teamCount - 1);
}
//end of this function 
//PENALTY 
if (isset($_POST['apply_penalty'])) {
    $penalty = $_POST['penalty'];

    // Fetch all users
    $usersSql = "SELECT user_id FROM score_reports";
    $usersResult = $connection->query($usersSql);
    
    while ($user = $usersResult->fetch_assoc()) {
        $userId = $user['user_id'];

        if (!hasCompletedEvaluations($userId, $connection)) {
            // User hasn't completed all evaluations, apply penalty
            $penalizeSql = "UPDATE score_reports SET penalized_score = total_score - ? WHERE user_id = ?";
            if ($stmt = $connection->prepare($penalizeSql)) {
                $stmt->bind_param("is", $penalty, $userId);
                $stmt->execute();
                $stmt->close();
            } else {
                echo "Error preparing statement: " . $connection->error;
            }
        }
    }
    echo "Penalty applied to users who have NOT completed evaluations only.<br>";
}

// END OF PENALTY 

// SQL query to update the raw_score in score_reports
$sql = "
    UPDATE score_reports AS sr
    SET sr.raw_score = (
        SELECT SUM(e.contribution + e.communication + e.motivation + e.teamwork + e.general)
        FROM evaluations AS e
        WHERE e.evaluatee_id = sr.user_id
    );
";

// Execute the SQL query
if ($connection->query($sql) === TRUE) {
    echo " Raw scores updated successfully.";
} else {
    echo "Error updating raw scores: " . $connection->error;
}

// Calculate total scores
$sql = "
    UPDATE score_reports AS sr
    SET sr.total_score = (
        SELECT (sr.raw_score / (SELECT COUNT(*) FROM evaluations WHERE evaluatee_id = sr.user_id AND contribution IS NOT NULL AND communication IS NOT NULL AND motivation IS NOT NULL AND teamwork IS NOT NULL AND general IS NOT NULL)/ 25) * 20
    );
";

if ($connection->query($sql) !== TRUE) {
    echo "Error updating total scores: " . $connection->error;
} else {
    echo "<br>Total scores updated successfully.<br>";
}

// Fetch data from the score_reports table
$scoreReportsSql = "SELECT * FROM score_reports";
$scoreReportsResult = $connection->query($scoreReportsSql);

// Fetch data from the evaluations table
$evaluationsSql = "SELECT * FROM evaluations";
$evaluationsResult = $connection->query($evaluationsSql);

// Close the database connection
$connection->close();
?>

<!DOCTYPE html>
<html>
// Dropdown for penalty 

<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <label for="penalty">Penalty:</label>
    <select id="penalty" name="penalty">
        <?php for ($i = 0; $i <= 20; $i++) { 
            echo "<option value='$i'>$i</option>"; 
        } ?>
    </select>
    <input type="submit" name="apply_penalty" value="Apply Penalty">
</form>

<head>
    <style>
        table {
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h3 style="text-align: left;">Generate Report</h3>
    <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label for="report_type">Select Report Type:</label>
        <select id="report_type" name="report_type">
            <option value="score_report">Score Report</option>
            <option value="evaluations">Evaluations</option>
            <option value="both">Both</option>
        </select>
        <input type="submit" name="generate_report" value="Generate Report">
    </form>

    <?php
    if (isset($_POST['generate_report'])) {
        $report_type = $_POST['report_type'];

        if ($report_type === 'score_report' || $report_type === 'both') {
            // Display Score Report table here
            echo "<h2>Score Reports</h2>";
            echo "<table>";
            echo "<tr>";
            echo "<th>First Name</th>";
            echo "<th>Last Name</th>";
            echo "<th>User ID</th>";
            echo "<th>Team</th>";
            echo "<th>Raw Score</th>";
            echo "<th>Total Score</th>";
            echo "<th>Penalized Score</th>";
            echo "</tr>";

            while ($row = $scoreReportsResult->fetch_assoc()) {
                echo "<tr>";
                echo "<td style='border: 1px solid black;'>" . $row["fname"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["lname"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["user_id"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["group_id"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["raw_score"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["total_score"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["penalized_score"] . "</td>";
                echo "</tr>";
            }

            echo "</table>";
        }

        if ($report_type === 'evaluations' || $report_type === 'both') {
            // Display Evaluations table here
            echo "<h2>Evaluations</h2>";
            echo "<table>";
            echo "<tr>";
            echo "<th>Evaluatee Name</th>";
            echo "<th>Evaluatee ID</th>";
            echo "<th>User ID</th>";
            echo "<th>Team</th>";
            echo "<th>Contribution</th>";
            echo "<th>Communication</th>";
            echo "<th>Motivation</th>";
            echo "<th>Teamwork</th>";
            echo "<th>General</th>";
            echo "<th>Comment</th>"; 
            echo "</tr>";

            while ($row = $evaluationsResult->fetch_assoc()) {
                echo "<tr>";
                echo "<td style='border: 1px solid black;'>" . $row["evaluatee_name"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["evaluatee_id"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["user_id"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["group_id"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["Contribution"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["Communication"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["Motivation"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["Teamwork"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["General"] . "</td>";
                echo "<td style='border: 1px solid black;'>" . $row["Comment"] . "</td>"; 
                echo "</tr>";
            }

            echo "</table>";
        }
    }
    ?>

    </table>
    <div id="footer">
    <!-- Footer content -->
</div>
</body>
</html>




