<?php
function test() {
	echo "Jaamac Kadiye";
}
//calling to excute
test();

function students($name, $age)
{
	echo "Magacu waa: ". $name. ', Daduna waa: '. $age;
}
students('Ali', 24);

function studentsWithDefaultAge($name, $age=10)
{
	echo "Magacu waa: ". $name. ', Daduna waa: '. $age;
}
studentsWithDefaultAge('Maryama', 20);

function sayHello($name) {
	$test = 'Hello, '. $name;
	return $test;
}
$name = sayHello('Al Imra');
echo $name;

//Personal functions library
include 'functions.php';
echo add(6, 8);
echo _test();

//Argunment by value
function magac($name) {
	$name = 'Jaamac';
}
$a = 'Ali';
magac($a);
echo $a;

//Argunment by reference
function magac2(&$name) {
	$name = 'Jaamac';
}
$b = 'Ali';
magac2($b);
echo $b;

?>