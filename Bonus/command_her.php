<?php
function her($there)
{
    $len = count($there);
    if ($len > 1) {
        $temp = $there[0];
        $there[0] = $there[1];
        $there[1] = $temp;
    } else {
        echo "\n";
        echo "Array there has only one element!";
        echo "\n";
    }
    return $there;
}
