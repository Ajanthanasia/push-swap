<?php
function her($there)
{
    $len = count($there);
    if ($len > 1) {
        $temp = $there[0];
        $there[0] = $there[1];
        $there[1] = $temp;
    } else {
    }
    return $there;
}

function sb($lb)
{
    $len = count($lb);
    if ($len > 1) {
        $temp = $lb[0];
        $lb[0] = $lb[1];
        $lb[1] = $temp;
    } else {
    }
    return $lb;
}
