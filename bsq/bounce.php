<?php
function findLargestSquare($map)
{

  $rows = count($map);
  echo $rows;
  $cols = count($map[0]);
  echo $cols;
  $maxSize = 0;

  // Create a DP table to store the size of the largest square ending at each cell
  $dp = array_fill(0, $rows, array_fill(0, $cols, 0));

  // Iterate through the map
  for ($i = 0; $i < $rows; $i++) {
    for ($j = 0; $j < $cols; $j++) {
      // echo $map[$i][$j].'';
      if ($map[$i][$j] == '.') {
        // If it's a free space, consider the size of the square ending at the previous cells
        //   $dp[$i][$j] = 1 + min($dp[$i - 1][$j], $dp[$i][$j - 1], isset($dp[$i - 1][$j - 1]) ? $dp[$i - 1][$j - 1] : 0);
        //   $maxSize = max($maxSize, $dp[$i][$j]);
      } else {
        // Obstacle, reset the size to 0
        $dp[$i][$j] = 0;
      }
    }
    //   echo "\n";
  }

  return $maxSize;
}

// Input handling (replace with your actual input method)
//   $lines = readline("Enter number of lines: ");
//   $map = [];
//   for ($i = 0; $i < $lines; $i++) {
//     $line = readline("Enter line " . ($i + 1) . " ('.': free, 'o': obstacle): ");
//     $map[] = str_split($line);
//   }

$map = [];
$no = readline();

for ($i = 0; $i < $no; $i++) {
  $line = readline();
  $map[] = str_split($line);
}
// echo $map[0][0];
// echo $map[0][1];
// echo $map[0][2];
// echo $map[0][3];


// Find the largest square
$largestSquareSize = findLargestSquare($map);

//   echo "The largest square that can be formed is: " . $largestSquareSize . " x " . $largestSquareSize . "\n";
