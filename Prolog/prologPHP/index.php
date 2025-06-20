<?php
require 'swiprolog.php';

$engine = new SWIProlog();
$engine->consult('archivo.pl');

$resultado = $engine->query("predicado(argumento)");
foreach ($resultado as $solucion) {
    echo $solucion['variable'] . "<br>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prolog y php</title>
</head>
<body>
    
</body>
</html>