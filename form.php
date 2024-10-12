<!DOCTYPE html>
<html>
<head>
	<title>Working With Forms</title>
</head>
<body>
	<form action="#" method="POST">
		<p>Name: <input type="text" name="fullname" required></p>
		<p>Tell: <input type="number" name="taleefan"></p>
		<input type="submit" name="frm" value="Save Data">
	</form>
	<hr>
	<!-- <form action="saveData.php" method="GET">
		<p>Name: <input type="text" name="magac"></p>
		<p>Tell: <input type="number" name="taleefan"></p>
		<button type="submit" name="btn">Save</button>
	</form> -->
</body>
</html>
<?php
//isset checks submitted data names
if (isset($_POST['fullname']) && !empty($_POST['fullname']) && $_POST['fullname'] == 'admin' ) {
	print_r($_POST); 
}else if (isset($_POST['fullname']) && !empty($_POST['fullname']) )
{
	echo "Youre not ADMIN";
}


?>