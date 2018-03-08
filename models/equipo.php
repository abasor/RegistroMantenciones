<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Equipo
 *
 * @author Alex Bastías
 */
class Equipo {
    private $db;
    
    private $id;
    private $tipoEquipo_id;
    private $nombre;
    
    public function __construct($id,$tipoEquipo_id,$nombre) {
        $this->db = Coneccion::conectar();
        $this->id = $id;
        $this->tipoEquipo_id = $tipoEquipo_id;
        $this->nombre = $nombre;
    }
    
    public function getTipoEquipo(){
        $sql = "select nombre from enumtable where id = " . $this->tipoEquipo_id;
        $consulta = $this->db->query($sql);
        $res = $consulta->fetch_object();
        return $res->nombre;
    }
    
    public function getId(){
        return $this->id;
    }
    public function getTipoEquipoId(){
        return $this->tipoEquipo_id;
    }
    public function getNombre(){
        return $this->nombre;
    }
    
    function setId($id) {
        $this->id = $id;
    }
    function setTipoEquipo_id($tipoEquipo_id) {
        $this->tipoEquipo_id = $tipoEquipo_id;
    }
    function setNombre($nombre) {
        $this->nombre = $nombre;
    }



}
