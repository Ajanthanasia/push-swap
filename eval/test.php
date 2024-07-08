<?php
function evaluate_expression($expr) {

  
    // Supported operators with their corresponding functions
    $operators = [
      '+' => function($a, $b) { return $a + $b; },
      '-' => function($a, $b) { return $a - $b; },
      '*' => function($a, $b) { return $a * $b; },
      '/' => function($a, $b) {
        if ($b === 0) {
          throw new InvalidArgumentException("Division by zero");
        }
        return $a / $b;
      },
    ];
  
    $stack = [];
  
    try {
      // Split the expression with basic whitespace and handle extra spaces
      $tokens = preg_split('/\s+/', trim($expr), -1, PREG_SPLIT_NO_EMPTY);
  
      foreach ($tokens as $token) {
        if (isset($operators[$token])) {
          $operator = $operators[$token];
          $operand2 = array_pop($stack);
          $operand1 = array_pop($stack);
          $result = $operator($operand1, $operand2);
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
    echo evaluate_expression("2 + 9") . PHP_EOL;  // Throws InvalidArgumentException
  } catch (InvalidArgumentException $e) {
    echo "Error: " . $e->getMessage() . PHP_EOL;
  }