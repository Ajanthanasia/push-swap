<?php

// Function to read and parse the grid from the input file
function readGrid($filename) {
    $file = fopen($filename, 'r');
    $grid = [];

    if ($file) {
        // Read the number of lines
        $numLines = intval(fgets($file));

        // Read the grid
        while (($line = fgets($file)) !== false) {
            $grid[] = str_split(trim($line));
        }

        fclose($file);
    }

    return $grid;
}

// Function to find the largest square
function findLargestSquare($grid) {
    $rows = count($grid);
    $cols = count($grid[0]);
    $maxSize = 0;
    $maxPos = [0, 0];

    // Create a DP table initialized to 0
    $dp = array_fill(0, $rows, array_fill(0, $cols, 0));

    // Fill the DP table
    for ($i = 0; $i < $rows; $i++) {
        for ($j = 0; $j < $cols; $j++) {
            if ($grid[$i][$j] === '.') {
                if ($i == 0 || $j == 0) {
                    $dp[$i][$j] = 1;
                } else {
                    $dp[$i][$j] = min($dp[$i-1][$j], $dp[$i][$j-1], $dp[$i-1][$j-1]) + 1;
                }

                // Update maximum size and position
                if ($dp[$i][$j] > $maxSize) {
                    $maxSize = $dp[$i][$j];
                    $maxPos = [$i, $j];
                }
            }
        }
    }
    return [$maxSize, $maxPos];
}

// Function to mark the largest square on the grid
function markLargestSquare(&$grid, $size, $pos) {
    [$maxRow, $maxCol] = $pos;

    for ($i = $maxRow; $i > $maxRow - $size; $i--) {
        for ($j = $maxCol; $j > $maxCol - $size; $j--) {
            $grid[$i][$j] = 'x';
        }
    }
}

// Main function
function main($filename) {
    $grid = readGrid($filename);
    [$size, $pos] = findLargestSquare($grid);
    markLargestSquare($grid, $size, $pos);

    // Print the modified grid
    foreach ($grid as $line) {
        echo implode('', $line) . "\n";
    }
}
// Entry point
if ($argc > 1) {
    $filename = $argv[1];
    main($filename);
} else {
    echo "Usage: php bsq.php <input_file>\n";
}