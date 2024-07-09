<?php
// Example usage
// $result = eval_expr("1+21");
// $result = eval_expr("12+3-6/3");
// $result = eval_expr("19%50");
// $result = eval_expr("50%6");
require('./index.php');
$expr = eval_expr("12/2+3");
echo $expr;
