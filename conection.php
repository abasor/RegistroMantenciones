<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$coneccion = new mysqli("localhost","root","","dbsihve");

if($coneccion->connect_error){
     die('Error de Conexion ('.$db->connect_errno.')'.$db->connect_error);
}


?>
