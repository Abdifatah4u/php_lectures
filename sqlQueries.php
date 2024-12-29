<?php
$host = 'localhost';
$user = 'root';
$pass = '';
$dbName = 'alimra';
$conn = mysqli_connect($host, $user, $pass, $dbName);

if (isset($_POST['fullname'])) {
	$insertQuery = "INSERT INTO `students`( `name`, `tell`, `address`, `dob`) VALUES ('$_POST[fullname]', '$_POST[talefan]', '$_POST[address]', '$_POST[dob]')";

	$result3 = mysqli_query($conn, $insertQuery);
	if ($result3) {
		echo 'Saved success';
	}

}

$query = 'SELECT * FROM `students`';
$query2 = 'SHOW COLUMNS FROM `students`';
$result = mysqli_query($conn, $query);
$result2 = mysqli_query($conn, $query2);
$numColumns = mysqli_num_fields($result);
echo '<table>';
	echo '<tr>';
		while ($row = mysqli_fetch_array($result2)) {
			echo "<th>$row[0]</th>";
		}
	echo '</tr>';

while ($row = mysqli_fetch_array($result)) {
	echo '<tr>';
	for ($i=0; $i < $numColumns; $i++) { 
		echo "<td>$row[$i]</td>";
	}
	echo '</tr>';
}
echo '</table>';
?>

<form action="#" method="POST">
	<p>Name: <input type="text" name="fullname"> </p>
	<p>Tell: <input type="text" name="talefan"> </p>
	<p>Address: <input type="text" name="address"> </p>
	<p>DOB: <input type="date" name="dob"> </p>
	<input type="submit" name="" value="Save Data">
</form>

<style type="text/css">
	table, tr, td, th {
		border: 1px solid;
		border-collapse: collapse;
	}
</style>

