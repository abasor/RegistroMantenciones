<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of revision
 *
 * @author Alex Bastías
 */
class Revision {
    //put your code here
    private $db;
    
    private $id; //autoincrement
    private $actividad_id;
    private $componente_id;
    private $estado_id;
    private $serial;
    private $seteo;
    private $observacion;
    
    public function __construct($id,$actividad_id,$componente_id,$estado_id,$serial,$seteo,$observacion) {
        $this->db = Coneccion::conectar();
        $this->id = $id;
        $this->actividad_id = $actividad_id;
        $this->componente_id = $componente_id;
        $this->estado_id = $estado_id;
        $this->serial = $serial;
        $this->seteo = $seteo;
        $this->observacion = $observacion;
        
    }
    
    public function guardar(){
        $sql = "insert into revisionescomponentes(actividad_id,componente_id,estado_id,serial,seteo,observacion) values("
                . $this->actividad_id.","
                . $this->componente_id.","
                . $this->estado_id.","
                . "'".$this->serial."',"
                . "'".$this->seteo."',"
                . "'".$this->observacion."'"
                .")";
        //echo $sql . "<br/>";
        $this->db->query($sql);
    }
    
    public function getComponente(){
        $sql = "select * from componentes where id = " . $this->componente_id;
        $con = $this->db->query($sql);
        $r = $con->fetch_object();
        return $r->nombre ." ". $r->modelo;
    }
    
    public function getEstado(){
        $sql = "select * from enumtable where tipo like 'estadoComponentes' and id = " . $this->estado_id;
        $con = $this->db->query($sql);
        $r = $con->fetch_object();
        return $r->nombre;
    }
    
    
    public function getId() {
        return $this->id;
    }
    public function getActividad_id() {
        return $this->actividad_id;
    }
    public function getComponente_id() {
        return $this->componente_id;
    }
    public function getEstado_id() {
        return $this->estado_id;
    }
    public function getSerial() {
        return $this->serial;
    }
    public function getSeteo() {
        return $this->seteo;
    }
    public function getObservacion() {
        return $this->observacion;
    }

    public function setId($id) {
        $this->id = $id;
    }
    public function setActividad_id($actividad_id) {
        $this->actividad_id = $actividad_id;
    }
    public function setComponente_id($componente_id) {
        $this->componente_id = $componente_id;
    }
    public function setEstado_id($estado_id) {
        $this->estado_id = $estado_id;
    }
    public function setSerial($serial) {
        $this->serial = $serial;
    }
    public function setSeteo($seteo) {
        $this->seteo = $seteo;
    }
    public function setObservacion($observacion) {
        $this->observacion = $observacion;
    }

    
    
}
