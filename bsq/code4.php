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

function findLargestSquare($input)
{
    // Split the input into lines
    $lines = explode("\n", trim($input));
    $n = count($lines);
    $m = strlen($lines[0]);

    // Convert input to a 2D array
    $matrix = [];
    for ($i = 0; $i < $n; $i++) {
        $matrix[$i] = str_split($lines[$i]);
    }

    // Create a 2D array to store the size of the largest square ending at each position
    $dp = array_fill(0, $n, array_fill(0, $m, 0));
    $maxSize = 0;
    $maxPos = [0, 0];

    // Fill the dp array
    for ($i = 0; $i < $n; $i++) {
        for ($j = 0; $j < min(count($matrix[$i]), $m); $j++) {
            if ($matrix[$i][$j] == '.') {
                if ($i == 0 || $j == 0) {
                    $dp[$i][$j] = 1;
                } else {
                    $dp[$i][$j] = min($dp[$i - 1][$j], $dp[$i][$j - 1], $dp[$i - 1][$j - 1]) + 1;
                }

                if ($dp[$i][$j] > $maxSize) {
                    $maxSize = $dp[$i][$j];
                    $maxPos = [$i, $j];
                }
            }
        }
    }

    // Mark the largest square with 'x'
    for ($i = $maxPos[0]; $i > $maxPos[0] - $maxSize; $i--) {
        for ($j = $maxPos[1]; $j > $maxPos[1] - $maxSize; $j--) {
            $matrix[$i][$j] = 'x';
        }
    }

    // Convert the matrix back to a string
    $result = "";
    for ($i = 0; $i < $n; $i++) {
        $result .= implode("", $matrix[$i]) . "\n";
    }

    return trim($result);
}


// Main function
function main($filename) {
    $grid = readGrid($filename);
    $output = findLargestSquare($grid);
    echo $output;
    // markLargestSquare($grid, $size, $pos);

    // Print the modified grid
    // foreach ($grid as $line) {
    //     echo implode('', $line) . "\n";
    // }
}
// Entry point
if ($argc > 1) {
    $filename = $argv[1];
    main($filename);
} else {
    echo "Usage: php bsq.php <input_file>\n";
}