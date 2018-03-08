<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getTecnicos(){
    require 'conection.php';
    $con = "select id,nombre from enumTable where tipo like 'tecnico'";
    $res = $coneccion->query($con);
    while($f = $res->fetch_assoc()){
        echo "<option value=" . $f['id'] . ">" . $f['nombre'] . "</option>";
    }
}

function getUbicaciones(){
    require 'conection.php';
    $con = "select id,nombre from enumTable where tipo like 'ubicacion'";
    $res = $coneccion->query($con);
    while($f = $res->fetch_assoc()){
        echo "<option value=" . $f['id'] . ">" . $f['nombre'] . "</option>";
    }
}

function getTipoEquipos(){
    require 'conection.php';
    $con = "select id,nombre from enumTable where tipo like 'tipoEquipo'";
    $res = $coneccion->query($con);
    while($f = $res->fetch_assoc()){
        echo "<option value=" . $f['id'] . ">" . $f['nombre'] . "</option>";
    }
}

function getEstadoActividades(){
    require 'conection.php';
    $con = "select id,nombre from enumTable where tipo like 'estadoActividad'";
    $res = $coneccion->query($con);
    while($f = $res->fetch_assoc()){
        echo "<option value=" . $f['id'] . ">" . $f['nombre'] . "</option>";
    }
}

function getEquipos($tipo){
    require 'conection.php';
    $con = "select id,nombre from equipos where tipoEquipo_id=$tipo";
    $res = $coneccion->query($con);
    while($f = $res->fetch_assoc()){
        echo "<option value=" .  $f['id'] . ">" . $f['nombre'] . "</option>";
    }
}

