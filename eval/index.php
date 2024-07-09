<?php
function eval_expr(string $expr)
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
?>