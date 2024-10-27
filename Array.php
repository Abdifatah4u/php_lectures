<?php
$xog = array(12, 'Jaamac Kadiye', true, 3.4, 'AIU', 'Sem 5/7' );

echo 'Waxay ka kooban tahay: ' . count($xog). '<br>'; //

echo 'Name: '. $xog[1] . '<br>';

//print_r($xog);

//For loop
for ($i=0; $i < count($xog); $i++) { 
	print $xog[$i] .'<br>';
}

//Foreach
foreach ($xog as $element) {
	print $element .'<br>';
}

foreach ($xog as $key => $value) {
	echo 'Index Key: '. $key . ', Value: '. $value .'<br>';
}


//Associative array
$tijaabo = array('1' => 'Sabti', '2'=>'Axad', '3'=>'Isniin');

// echo $tijaabo['2']
foreach ($tijaabo as $value) print $value.'<br>';
?>