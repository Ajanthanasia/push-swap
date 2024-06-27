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

function findLargestSquare($grid) {
  $n = count($grid);
  $m = strlen($grid[0]);

  // Create a 2D array to store the size of the largest square ending at each position
  $dp = array_fill(0, $n, array_fill(0, $m, 0));
  $maxSize = 0;
  $maxPos = [0, 0];

  // Fill the dp array
  for ($i = 0; $i < $n; $i++) {
    for ($j = 0; $j < min(count($grid[$i]), $m); $j++) {
      if ($grid[$i][$j] == '.') {
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

  // Mark the largest square with 'x' (logic already implemented)

  // Convert the matrix back to a string
  $result = "";
  for ($i = 0; $i < $n; $i++) {
    $result .= implode("", $grid[$i]) . "\n";
  }

  return trim($result);
}


// Main function
function main($filename) {
  $grid = readGrid($filename);
  $output = findLargestSquare($grid);
  echo $output;
}

// Entry point
if ($argc > 1) {
  $filename = $argv[1];
  main($filename);
} else {
  echo "Usage: php bsq.php <input_file>\n";
}