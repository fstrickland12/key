<!-- evaluations.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Peer Evaluation Form</title>
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

<div id="main">
<p>Use the rubric below to evaluate your teammates' contributions to your capstone project over the course of the semester. Use the form below the rubric to grade your teammates on a scale of 1 to 5. </p>

    <div>
        <table class="table2">
            <tr><td class="td3" colspan="6" style="text-align: center">Peer Evaluation Rubric</td>
            <tr style="text-align: center;"><td class="td3">Score:</td>
                <td class="td3">1</td>
                <td class="td3">2</td>
                <td class="td3">3</td>
                <td class="td3">4</td>
                <td class="td3">5</td>
            <tr><td class="td3"><b>Contribution to Project Goals - Quality of Work </b><br>Consider how much the team member contributed to the project goals and deliverables, by providing work that is of good quality, complete, and on time.</td>
                <td class="td3">Produces unacceptable work, fails to meet minimum group or project requirements. Constantly needs other people to do the work.</td>
                <td class="td3">Occasionally produced work that met minimum group or project requirements. Constantly needed to rework on certain parts.</td>
                <td class="td3">Met minimum group or project requirements. Occasionally needed some critical review or necessary improvement by others.</td>
                <td class="td3">Regularly produced work that met general requirements and sometimes exceeded project or group requirements. </td>
                <td class="td3">Made significant contributions to the solution and other deliverables. Produced work that consistently exceeded group or project requirements.</td>
            <tr><td class="td3"><b>Communication</b><br>Consider how well and how soon the team member communicated and responded to other team members and other stakeholders.</td>
                <td class="td3">Almost never or always late responded to emails. Never initiate any communication with others.</td>
                <td class="td3">Often late responded to emails. Seldom initiate any communication with others. Passive in responding to requests.</td>
                <td class="td3">Respond to emails and requests but not active in communication or sharing ideas.</td>
                <td class="td3">Respond to emails and requests in time. Active in communication at least with the team. Willing to listen and sharing.</td>
                <td class="td3">Always responded to emails in time. Very active and proactive in communication with all stakeholders. Demonstrate professionalism in any form of communication.</td>
            <tr><td class="td3"><b>Motivation / Commitment to the Project</b><br> Motivation and commitment the overall project and team success, including time allocation, availability, willingness to take additional tasks, etc. </td>
                <td class="td3">Did not seem to care about project progress. Constantly being unavailable for tasks or did not allocate enough time for the project. Fails to meet deadlines set by group. Is unwilling to carry out assigned tasks.</td>
                <td class="td3">Distracted sometimes and could not follow the project completely. Needed other people’s reminder or push to stay on track. Occasionally misses deadlines set by group. Sometimes carries out assigned tasks but never volunteers to do a task.</td>
                <td class="td3">Seemed only interested in own work assignment. Sometimes busy with other things and did not allocate enough time for the project. Regularly meets deadlines set by group. Carries out assigned tasks but never volunteers to do a task.</td>
                <td class="td3">Made commitments to assigned tasks. Willing to take additional tasks when pushed or motivated by others. Consistently carries out assigned tasks and occasionally volunteers for other tasks. Consistently meets deadlines set by group and occasionally completes work ahead of schedule.</td>
                <td class="td3">Strongly committed to the project as a whole, not just assigned part. Showed genuine interest in project success. Attend all meetings and other group activities. Consistently completed work ahead of schedule. Consistently carries out assigned tasks and always volunteers for other tasks.</td>    
            <tr><td class="td3"><b>Teamwork - Involvement / Team Support</b><br>Consider the extent the team member participated in meetings, discussions, research, problem solving, and other group activities. Cooperative, supportive, flexible, and with positive attitude. </td>
                <td class="td3">Fails to participate in group meetings and fails to share relevant material. Behavior is detrimental to group. Gives no task support to other members.</td>
                <td class="td3">Sometimes participates in group discussions and rarely contributes relevant material for the project. Behavior is inconsistent and occasionally distracts group meetings. Sometimes gives task support to other members.</td>
                <td class="td3">Takes part in group discussions and meetings (not actively); did work as assigned. Regularly projects appropriate team behavior including: listening to others, and allowing his/her ideas to be criticized. Occasionally provides task support to other group members.</td>
                <td class="td3">Regularly participates in group discussion and sometimes exceeds expectations. Consistently demonstrates appropriate team behavior. Consistently provides task support to other group members.</td>
                <td class="td3">Actively participated in discussion and other activities. Consistently demonstrates exemplary team behavior. Consistently gives more task support than expected. Mentor and support other team members.</td>   
            <tr><td class="td3"><b>General / Other</b><br>Consider all other aspects and the overall performance of the team member. Use the comment box for more details.</td>
                <td class="td3">Performance significantly fails to meet group requirements.</td>
                <td class="td3">Performance fails to meet some group requirements.</td>
                <td class="td3">Performance meets all group requirements.</td>
                <td class="td3">Performance meets all group requirements consistently and sometimes exceeds requirements.</td>
                <td class="td3">Performance consistently exceeds all group requirements.</td>           
            
        </table>


<br>
    </div>
        <div id="form1">
           <table class="table2">
            <tr><td class="td2" colspan="2" style="text-align:center"><h1>Student Evaluation Form</h1></td>
		<!-- Display the evaluator's name-->
		<tr><td class="td2" colspan="2" style="text-align:center"><b>
<?php
if (isset($_COOKIE['evaluator_uid'])) {
    $evaluator_uid = $_COOKIE['evaluator_uid'];
    echo "Evaluator: " . $evaluator_uid;
} else {
    echo "Evaluator: Not specified";
}
?>
</b></td>

		<!-- Display the selected team member's name -->
		<tr><td class="td2" colspan="2" style="text-align:center"><b>
<?php
if (isset($_POST['selectedUID'])) {
    $selectedUID = $_POST['selectedUID'];
    echo "Selected Team Member: " . $selectedUID;
} else {
    echo "No UID selected.";
}
?>
</b></td>

<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

		<tr><td class="td2">Contribution to Project Goals - Quality of Work</td>
                <td class="td2"><select id="u11" name="Contribution"> 
                    <option> - </option>
                    <option> 1 </option> 
                    <option> 2 </option> 
                    <option> 3 </option>
                    <option> 4 </option>
                    <option> 5 </option>   
                    </select> </td>
		
    		</tr>
   
	    <tr><td class="td2">Communication</td>
                <td class="td2"><select id="u12" name="Communication"> 
                    <option> - </option>
                    <option> 1 </option> 
                    <option> 2 </option> 
                    <option> 3 </option>
                    <option> 4 </option>
                    <option> 5 </option>   
		    </select> </td>
	
		</tr>

            <tr><td class="td2">Motivation / Commitment to the Project</td>
                <td class="td2"><select id="u13" name="Motivation"> 
                    <option> - </option>
                    <option> 1 </option> 
                    <option> 2 </option> 
                    <option> 3 </option>
                    <option> 4 </option>
                    <option> 5 </option>   
		    </select> </td>
	
		</tr>

            <tr><td class="td2">Teamwork - Involvement / Team Support</td>
                <td class="td2"><select id="u14" name="Teamwork"> 
                    <option> - </option>
                    <option> 1 </option> 
                    <option> 2 </option> 
                    <option> 3 </option>
                    <option> 4 </option>
                    <option> 5 </option>   
		    </select> </td>
	
		</tr>

            <tr><td class="td2">General / Other</td>
                <td class="td2"><select id="u15" name="General"> 
                    <option> - </option>
                    <option> 1 </option> 
                    <option> 2 </option> 
                    <option> 3 </option>
                    <option> 4 </option>
                    <option> 5 </option>   
		    </select> </td>

		</tr>
         <!-- General Comments -->
         <tr>
                <td colspan="2">
                    <label for="general-comments">General Comments (required if any score is 3 or less):</label>
                    <textarea id="general-comments" name="general-comments" rows="4" cols="50" style="display: none;"></textarea>
                </td>
            </tr>
            <!-- Include hidden fields for evaluator_uid and selectedUID -->
            <input type="hidden" name="evaluator_uid" value="<?php echo $evaluator_uid; ?>">
            <input type="hidden" name="selectedUID" value="<?php echo $selectedUID; ?>">

            </table>
            </div>
                     </div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    const scoreDropdowns = document.querySelectorAll('select');
    const commentTextarea = document.getElementById('general-comments');

    function updateCommentBoxDisplay() {
        let showCommentBox = Array.from(scoreDropdowns).some(dropdown => parseInt(dropdown.value) <= 3);

        commentTextarea.style.display = showCommentBox ? 'block' : 'none';
        if (!showCommentBox) {
            commentTextarea.value = '';
        }
    }

    scoreDropdowns.forEach(dropdown => {
        dropdown.addEventListener('change', updateCommentBoxDisplay);
    });

    // Initial check on page load
    updateCommentBoxDisplay();
</script>



<?php
	// Handle form submission
	if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
	    // Retrieve data from the form
	    $evaluator_uid = $_POST['evaluator_uid'];
	    $selectedUID = $_POST['selectedUID'];
	    $Contribution = $_POST['Contribution'];
	    $Communication = $_POST['Communication'];
	    $Motivation = $_POST['Motivation'];
	    $Teamwork = $_POST['Teamwork'];
	    $General = $_POST['General'];
        $Comment = isset($_POST['general-comments']) ? $_POST['general-comments'] : NULL;

 // Check if any criteria are 3 or less
 $requiresComment = $Contribution <= 3 || $Communication <= 3 || $Motivation <= 3 || $Teamwork <= 3 || $General <= 3;

 // Validate comment if required
 if ($requiresComment && empty($Comment)) {
     echo "Please provide a comment for scores of 3 or less.";
     // Consider re-displaying the form here or providing a means to correct the input
 } else {
     // Proceed with database update (or whatever your form submission does)

    	// Database connection settings
	$dbname = 'demo';
        $dbuser = 'dbadmin';
        $dbpass = 'Pass123412341234';
        $dbhost = 'peerappdb.mysql.database.azure.com';

	// Create connection to the database
        $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

    if (!$conn) {
            die("Unable to connect to the database: " . mysqli_connect_error());
        }

    // Insert data into the database
    $sql = "UPDATE evaluations SET Contribution = ?, Communication = ?, Motivation = ?, Teamwork = ?, General = ?, Comment = ? WHERE evaluatee_id = ? AND user_id = ?";


    // Prepare the statement
    if ($stmt = mysqli_prepare($conn, $sql)) {
        // Bind variables to the prepared statement as parameters
        mysqli_stmt_bind_param($stmt, "iiiiisss", $Contribution, $Communication, $Motivation, $Teamwork, $General, $Comment, $selectedUID, $evaluator_uid);

        // Attempt to execute the prepared statement
        if(mysqli_stmt_execute($stmt)){
            echo "Record updated successfully.";
        } else {
            echo "ERROR: Could not execute query: $sql. " . mysqli_error($conn);
        }
    } else {
        echo "ERROR: Could not prepare query: $sql. " . mysqli_error($conn);
    }

    // Close statement and connection
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
}
    }
?>

        <input type="submit" name="submit" value="Submit Evaluation">
        <div id="footer">
    <!-- Footer content -->
</div>
    </form>
</body>
</html>

