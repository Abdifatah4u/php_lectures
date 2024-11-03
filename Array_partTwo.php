<?php 
//array declaration: array()  =  []
$row1 = ['Jaamac', 40, 65];
$row2 = ['Ali', 35, 60];


$marks = [$row1, $row2, $row2];
//$marks[rowIndex][columnIndex]
// echo($marks[0][0]);
// echo($marks[0][1]);
// echo($marks[1][2]);
//print_r($marks);
// echo(count($marks));
// &nbsp;  non-breaking-space
for ($i=0; $i < count($marks); $i++) { //rows loop

	foreach ($marks[$i] as $key => $value) {//columns loop
		echo $value. ' ';
	}
	echo "<br>";
}

//Implode: converts array to string
$str = implode('#', $row1);

echo($str);

//Jaamac#40#65 
$test = 'Jaamac#40#65';
//Explode: converts string to array
$myArray = explode('#', $test);
print_r($myArray);