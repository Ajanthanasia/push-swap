<?php

// Function to perform the given operations and update the operations list
function performOperation($operation)
{
    global $operations;
    $operations[] = $operation;
}

// Operation functions
function her(&$there)
{
    if (count($there) >= 2) {
        list($there[0], $there[1]) = [$there[1], $there[0]];
        performOperation('her');
    }
}

function sb(&$lb)
{
    if (count($lb) >= 2) {
        list($lb[0], $lb[1]) = [$lb[1], $lb[0]];
        performOperation('sb');
    }
}

function sc(&$there, &$lb)
{
    her($there);
    sb($lb);
    performOperation('sc');
}

function pa(&$there, &$lb)
{
    if (!empty($lb)) {
        array_unshift($there, array_shift($lb));
        performOperation('pa');
    }
}

function pb(&$there, &$lb)
{
    if (!empty($there)) {
        array_unshift($lb, array_shift($there));
        performOperation('pb');
    }
}

function ra(&$there)
{
    if (!empty($there)) {
        $firstElement = array_shift($there);
        array_push($there, $firstElement);
        performOperation('ra');
    }
}

function rb(&$lb)
{
    if (!empty($lb)) {
        $firstElement = array_shift($lb);
        array_push($lb, $firstElement);
        performOperation('rb');
    }
}

function rr(&$there, &$lb)
{
    ra($there);
    rb($lb);
    performOperation('rr');
}

function rra(&$there)
{
    if (!empty($there)) {
        $lastElement = array_pop($there);
        array_unshift($there, $lastElement);
        performOperation('rra');
    }
}

function rrb(&$lb)
{
    if (!empty($lb)) {
        $lastElement = array_pop($lb);
        array_unshift($lb, $lastElement);
        performOperation('rrb');
    }
}

// Function to sort the list
function sortList(&$there)
{
    global $operations;
    $lb = [];
    $operations = [];

    // Sorting algorithm using stack
    while (!empty($there)) {
        $minVal = min($there);
        while ($there[0] != $minVal) {
            if (!empty($lb) && $lb[0] < $minVal) {
                pb($there, $lb);
            } else {
                ra($there);
            }
        }
        pa($there, $lb);
    }

    return $operations;
}

// Extracting command-line arguments
$args = array_slice($argv, 1);
$there = array_map('intval', $args);

// Sorting the list
$operations = sortList($there);

// Outputting the series of operations
echo implode(' ', $operations);
