<?php
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
// Example usage
// $result = eval_expr("1+21");
// $result = eval_expr("12+3-6/3");
// $result = eval_expr("19%50");
// $result = eval_expr("50%6");
$result = eval_expr("12/2+3");
echo $result;
