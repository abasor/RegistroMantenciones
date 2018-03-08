<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function guardarActividad(
        $equipo,
        $tipoEquipo,
        $responsable,
        $fechaInicio,
        $fechaFin,
        $enSistema,
        $ubicacion,
        $descripcion,
        $estadoActividad
    ){
    require 'conection.php';
    $con = "INSERT INTO dbsihve.actividades(equipo,tipoEquipo_id,responsable_id,fechaInicio,fechaTermino,enSistema,ubicacion_id,descripcionActividad,estadoActividad_id) "
            . "VALUES($equipo,$tipoEquipo,$responsable,$fechaInicio,$fechaFin,$enSistema,$ubicacion,$descripcion,$estadoActividad)";
    
}
