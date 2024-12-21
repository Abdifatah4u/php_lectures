<!DOCTYPE html>
<html>
<head>
    <title>Assignment</title>
</head>
<body>
    <fieldset>
        <legend>Assignment</legend>
        <form method="POST">
            <p>Name: <input type="text" name="username"></p>
            <p><button type="submit">Submit</button></p>
        </form>
    </fieldset>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST['username'])) {
            $name = htmlspecialchars($_POST['username']); 
if (!empty($name)) {
                echo "<p>The name entered is: <strong>$name</strong></p>";
            } 
else {
                echo "<p>Please enter a name!</p>";
            }
        }
    }
    ?>
Assignment By Ikran.