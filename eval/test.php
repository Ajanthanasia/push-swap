<?php
function evaluate_expression($expr)
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
      return $intNum + evaluate_expression($restOfString);
    } else if ($operator == "-") {
      return $intNum - evaluate_expression($restOfString);
    } else if ($operator == "*") {
      return $intNum * evaluate_expression($restOfString);
    } else if ($operator == "/") {
      return $intNum / evaluate_expression($restOfString);
    }
  }
}
// Example usage
// $result = evaluate_expression("1+21");
// $result = evaluate_expression("12-3");
// $result = evaluate_expression("12*12");
$result = evaluate_expression("12/2");
echo $result;
