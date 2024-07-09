<?php
$file = $argv[1];
$handle = fopen($file, "r");
if ($handle) {
    function eval_expr($expr)
    {
        if (is_numeric($expr)) {
            $intValue = intVal($expr);
            return $intValue;
        } else {
            $i = 0;
            $num = "";
            while (is_numeric($expr[$i])) {
                $num .= $expr[$i];
                $i++;
            }
            $intNum = intVal($num);
            $operator = $expr[$i];
            $i++;
            $restOfString = substr($expr, $i, strlen($expr));
            if ($operator == "+") {
                return $intNum + eval_expr($restOfString);
            } else if ($operator == "-") {
                return $intNum - eval_expr($restOfString);
            } else if ($operator == "*") {
                return $intNum * eval_expr($restOfString);
            } else if ($operator == "/") {
                return $intNum / eval_expr($restOfString);
            } else if ($operator == "%") {
                return $intNum % eval_expr($restOfString);
            }
        }
    }
    $expr = fgets($handle);
    print_r(eval_expr($expr));
    fclose($handle);
}
