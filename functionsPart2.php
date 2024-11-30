<?php
//1. User-defined functions
//creating function
function students() {
	echo 'Jaamac <br>';
	echo 'Amina';
}

//calling function to excute
students();

//return in function
function sayHello() {
	return 'Hello';
}

//while calling function with return
echo sayHello();
$hi = sayHello();
echo $hi.'<br>';

//parameters of functions
function welcome($name, $address = 'Howlwadaag') { //$name = parameter
	echo 'Welcome '. $name. ', to: '. $address;
}

welcome('Mohamed', 'Waaberi'); //(argument)
echo '<hr>';

//====================
//2. System functions applied to strings
$name = 'Alimra International University';
//strlen
echo strlen($name).'<br>';

//strpos($haystack, $needle, $offset = 0)
echo strpos($name, 'International').'<br>';

//str_replace($search, $replace, $subject)
echo str_replace('Alimra', 'Jaamac', $name).'<br>';

//substr($string, $start, $length = null)

echo substr($name, 7).'<br>';

//str_shuffle($string)
echo str_shuffle($name).'<br>';
echo str_shuffle('MOHAMED');



?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<fieldset>
		<legend>Assignment</legend>
		<form>
			<p>Name: <input type="" name=""></p>
			<p><button>Shuffle</button></p>
			<h2>DOAEMHM</h2>
		</form>
	</fieldset>

</body>
</html>