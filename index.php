<!DOCTYPE html>
<html>
<head>
    <title>Peer Evaluation Homepage</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div id="header">
    <header>
        <nav>
            Menu: <a href="index.php">Home</a> 
        </nav>
    </header>
</div>
<h1 style="text-align: center;">Peer Evaluation Portal</h1>

<h2>Enter Your UID</h2>

<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <label for="uid">Enter Your UID:</label>
    <input type="text" id="uid" name="uid" required>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>

    <input type="submit" value="Submit">
</form>

<?php
if (!empty($_POST['uid']) && !empty($_POST['password'])) {

    $uid = $_POST['uid'];
    $password = $_POST['password'];

    // Database connection details
    $dbname = 'demo';
    $dbuser = 'dbadmin';
    $dbpass = 'Pass123412341234';
    $dbhost = 'peerappdb.mysql.database.azure.com';

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

    if (!$conn) {
        die("Unable to connect to the database: " . mysqli_connect_error());
    }

    if ($uid === 'admin' && $password === 'admin') {
        header("Location: score_report.php");
        exit;
    }

    // Query to authenticate the user and get their group
    $sql_auth = "SELECT password, group_id FROM user_group_mapping WHERE user_id = ?";
    if ($stmt_auth = $conn->prepare($sql_auth)) {
        $stmt_auth->bind_param("s", $uid);
        $stmt_auth->execute();
        $stmt_auth->bind_result($db_password, $user_team);
        $stmt_auth->fetch();
        $stmt_auth->close();

        if ($password === $db_password) {
            // The user's group has been determined
            if (!empty($user_team)) {
                // The user's group is not empty
                $sql_team_members = "SELECT user_id FROM user_group_mapping WHERE group_id = ? AND user_id <> ?";
                if ($stmt = $conn->prepare($sql_team_members)) {
                    $stmt->bind_param("ss", $user_team, $uid);
                    $stmt->execute();
                    $stmt->bind_result($user_id);

                    $team_members = array();
                    while ($stmt->fetch()) {
                        $team_members[] = $user_id;
                    }

                    $stmt->close();

                    if (!empty($team_members)) {
                        echo "<h2>Select which team member you wish to evaluate:</h2>";
                        echo "<form action='evaluations.php' method='POST'>";
                        echo "<select id='teamMemberSelect' name='selectedUID'>";
                        foreach ($team_members as $member) {
                            echo "<option value='$member'>$member</option>";
                        }
                        echo "</select>";
                        echo "<input type='submit' value='Submit'>";
                        echo "</form>";

                        // Set the evaluator UID as a cookie
                        setcookie('evaluator_uid', $uid, time() + 3600, '/');
                    } else {
                        echo "No team members found for the provided group or the user's UID.";
                    }
                } else {
                    echo "Error in the prepared statement: " . $conn->error;
                }
            } else {
                echo "User not associated with any group. Please contact the administrator.";
            }
        } else {
            echo "Invalid credentials. Please try again.";
        }
    } else {
        echo "Error in the prepared statement: " . $conn->error;
    }

    $conn->close();
}
?>
</body>
</html>
