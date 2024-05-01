<?php
function printArray($name, $arr)
{
    echo $name;
    echo " : ";
    $length = count($arr);
    for ($i = 0; $i < $length; $i++) {
        echo $arr[$i];
        echo " ";
    }
    echo "\n";
}
