<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            echo "responsable: " . $_POST['responsable'] . "<br />";
            echo "ubicacion: " . $_POST['ubicacion'] . "<br />";
            echo "tipo equipo: " . $_POST['tipoEquipo'] . "<br />";
            echo "nombre equipo: " . $_POST['nombreEquipo'] . "<br />";
            echo "en sistema: " . $_POST['enSistema'] . "<br />";
            echo "fecha inicio: " . $_POST['fechaInicio'] . "<br />";
            echo "fecha termino: " . $_POST['fechaTermino'] . "<br />";
            echo "descripcion: " . $_POST['descripcion'] . "<br />";
            echo "estado actividad: " . $_POST['estadoActividad'] . "<br />";
        ?>  
    </body>
</html>
