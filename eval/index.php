<?php

function eval_expr(string $expr)
{
    // Helper function to evaluate basic binary expressions
    function eval_basic_expr($num1, $operator, $num2)
    {
        switch ($operator) {
            case '+':
                return $num1 + $num2;
            case '-':
                return $num1 - $num2;
            case '*':
                return $num1 * $num2;
            case '/':
                return $num1 / $num2;
            case '%':
                return $num1 % $num2;
        }
        return 0; // Default case, should never be reached
    }

    // Function to handle precedence using the Shunting Yard algorithm
    function parse_to_rpn($expr)
    {
        $output = [];
        $operators = [];
        $i = 0;
        $length = strlen($expr);
        while ($i < $length) {
            $char = $expr[$i];

            // If it's a number, parse the full number
            if (is_numeric($char)) {
                $num = '';
                while ($i < $length && is_numeric($expr[$i])) {
                    $num .= $expr[$i];
                    $i++;
                }
                $output[] = $num;
                continue;
            }

            // If it's an operator, handle according to precedence
            if (in_array($char, ['+', '-', '*', '/', '%'])) {
                while (!empty($operators) && precedence(end($operators)) >= precedence($char)) {
                    $output[] = array_pop($operators);
                }
                $operators[] = $char;
            }

            $i++;
        }

        // Pop all remaining operators to output
        while (!empty($operators)) {
            $output[] = array_pop($operators);
        }

        return $output;
    }

    // Function to evaluate RPN expression
    function eval_rpn($rpn)
    {
        $stack = [];
        foreach ($rpn as $token) {
            if (is_numeric($token)) {
                $stack[] = $token;
            } else {
                $num2 = array_pop($stack);
                $num1 = array_pop($stack);
                $stack[] = eval_basic_expr($num1, $token, $num2);
            }
        }
        return array_pop($stack);
    }

    // Helper function to define operator precedence
    function precedence($operator)
    {
        switch ($operator) {
            case '-':
                return 1;
            case '+':
                return 2;
            case '/':
                return 3;
            case '*':
                return 4;
            case '%':
                return 5;
        }
        return 0;
    }

    // Convert expression to Reverse Polish Notation (RPN)
    $rpn = parse_to_rpn($expr);
    // Evaluate the RPN expression
    return eval_rpn($rpn);
}
