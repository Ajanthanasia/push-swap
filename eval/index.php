<?php

function evaluate_expression($expr) {

  // Supported operators with precedence (higher to lower)
  $operators = [
      '*' => 2,
      '/' => 2,
      '%' => 2,
      '+' => 1,
      '-' => 1,
  ];

  // Function to handle division by zero and modulo by zero
  $safe_operators = [
      '/' => function ($a, $b) { return $b === 0 ? throw new InvalidArgumentException("Division by zero") : $a / $b; },
      '%' => function ($a, $b) { return $b === 0 ? throw new InvalidArgumentException("Modulo by zero") : $a % $b; },
  ];

  $stack = [];

  try {
    $tokens = preg_split('/\s+/', trim($expr), -1, PREG_SPLIT_NO_EMPTY); // Split safely with whitespace

    foreach ($tokens as $token) {
      if (isset($operators[$token])) {
        $operator = $token;
        $operand2 = array_pop($stack);
        $operand1 = array_pop($stack);

        if (isset($safe_operators[$operator])) {
          $result = $safe_operators[$operator]($operand1, $operand2);
        } else {
        //   $result = $operators[$operator]($operand1, $operand2);
        $result = "error";
        }
        array_push($stack, $result);
      } else {
        if (!is_numeric($token)) {
          throw new InvalidArgumentException("Invalid characters in expression: $token");
        }
        array_push($stack, (float) $token);
      }
    }

    if (count($stack) !== 1) {
      throw new InvalidArgumentException("Invalid expression syntax");
    }

    return array_pop($stack);
  } catch (Exception $e) {
    throw new InvalidArgumentException("Error evaluating expression: " . $e->getMessage());
  }
}

// Example usage
try {
//   echo evaluate_expression("2 + 3 * 4") . PHP_EOL; // Output: 14
//   echo evaluate_expression("(4 - 1) * (2 + 3)") . PHP_EOL; // Output: 15
//   echo evaluate_expression("2 % 3") . PHP_EOL; // Output: 2

  // Invalid expressions (division by zero and modulo by zero)
  evaluate_expression("1 / 0");  // Throws InvalidArgumentException
//   evaluate_expression("2 % 0");  // Throws InvalidArgumentException

  // Invalid character
//   evaluate_expression("a + b");  // Throws InvalidArgumentException
} catch (InvalidArgumentException $e) {
  echo "Error: " . $e->getMessage() . PHP_EOL;
}