<?php
include_once "print_array.php";
include_once "command_her.php";
$there = array();
$lb = array();

$no = readline("Enter array there elements : ");
$num_array = explode(" ", $no);
$there = array_map('intval', $num_array);

sort($there);
printArray('there', $there);
printArray('lb', $lb);
$comm = readline("Your command : ");
if ($comm == 'her' || $comm == 'Her' || $comm == 'HER') {
    $there = her($there);
    printArray('there', $there);
    printArray('lb', $lb);
}
