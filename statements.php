<?php
//Types of statements

//1. Assignment statement
$name = 'AIU';  // = symbol means assingment operator

//2. Print statement
// print 'Hello world';

//3. If statement
	/*
	== equal
	!= not equal
	> greater than
	< less than
	*/
$x = 10;

// if($x == 10) {
// 	print 'X equals to 10<br>';
// }

//True values: true, 1, logically true
//False values: false, 0, null, undefined 
if(5 > 10) {
	echo "5 is greater than 4<br>";
}elseif (20 > 10) {
	echo "20 is greater than 10<br>";
}
else {
	echo "Else statements excuted";
}


//4. Switch statement
$day = 'Saturday';
switch ($day) {
	case 'Sunday':
		echo "Today is Sunday";
		break;
	case 'Monday':
		echo "Today is Monday";
		break;
	case 'Saturday':
		echo "Today is Saturday <br>";
		break;
	default:
		echo "Today is Unknown";
		break;
}

//5. For Loop statement
// for ($i=0; $i < 100; $i++) { 
// 	print $i .'<br>';
// }

// for ($i=20; $i > 0; $i--) { 
// 	echo "Number ". $i;
// }


//Require statement
include 'index2.php';
require 'index2.php';
//echo "End of code";

?>