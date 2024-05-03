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
        } else if ($comm == 'sb' || $comm == 'Sb' || $comm == 'SB') {
            $lb = sb($lb);
        } else if ($comm == 'sc') {
            $there = her($there);
            $lb = sb($lb);
        } else if ($comm == 'pa') {
            $arrs = pa($there, $lb);
            $there = $arrs[0];
            $lb = $arrs[1];
        } else if ($comm == 'pb') {
            $arrs = pb($there, $lb);
            $there = $arrs[0];
            $lb = $arrs[1];
        } else if ($comm == 'ra') {
            $there = ra($there);
        } else if ($comm == 'rb') {
            $lb = rb($lb);
        } else if ($comm == 'rr') {
            $there = ra($there);
            $lb = rb($lb);
        } else if ($comm == 'rra') {
            $there = rra($there);
        } else if ($comm == 'rrb') {
            $lb = rrb($lb);
        } else if ($comm == 'rrr') {
            $there = rra($there);
            $lb = rrb($lb);
        }
    }
}
printArray('there', $there);
printArray('lb', $lb);
