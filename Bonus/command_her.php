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

function pa($there, $lb)
{
    $len = count($lb);
    if ($len > 0) {
        $removeEle = array_shift($lb);
        array_unshift($there, $removeEle);
    }
    $arrs = [
        $there,
        $lb
    ];
    return $arrs;
}

function pb($there, $lb)
{
    $len = count($there);
    if ($len > 0) {
        $removeEle = array_shift($there);
        array_unshift($lb, $removeEle);
    }
    $arrs = [
        $there,
        $lb
    ];
    return $arrs;
}

function ra($there)
{
    $len = count($there);
    if ($len > 0) {
        $firstElement = array_shift($there);
        array_push($there, $firstElement);
    }
    return $there;
}

function rb($lb)
{
    $len = count($lb);
    if ($len > 0) {
        $firstElement = array_shift($lb);
        array_push($lb, $firstElement);
    }
    return $lb;
}
