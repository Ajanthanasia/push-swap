<?php
include_once "print_array.php";
include_once "command_her.php";

$there = array();
$lb = array();
$len = count($argv);
for ($i = 1; $i < $len; $i++) {
    $n = intval($argv[$i]);
    if ((is_int($n)) && ($n > 0)) {
        array_push($there, $n);
    } else {
        sort($there);
        $comm = $argv[$i];
        if ($comm == 'her' || $comm == 'Her' || $comm == 'HER') {
            $there = her($there);
            printArray('there', $there);
            printArray('lb', $lb);
        }
    }
}
