<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Actividad
{    
    private $db;
    
    private $id; //autoincrement
    private $equipo_id;
    private $responsable_id;
    private $fechaInicio;
    private $fechaTermino;
    private $enSistema;
    private $ubicacion_id;
    private $descripcionActividad;
    private $estadoActividad_id;
    private $revisionesComponentes; //array
    
    public function __construct($id,$equipo_id,$responsable_id,$fechaInicio,$fechaTermino,$enSistema,$ubicacion_id,$descripcionActividad,$estadoActividad) {
        $this->db = Coneccion::conectar();
        $this->id = $id;
        $this->equipo_id = $equipo_id;
        $this->responsable_id = $responsable_id;
        $this->fechaInicio = $fechaInicio;
        $this->fechaTermino = $fechaTermino;
        $this->enSistema = $enSistema;
        $this->ubicacion_id = $ubicacion_id;
        $this->descripcionActividad = $descripcionActividad;
        $this->estadoActividad_id = $estadoActividad;
        $this->revisionesComponentes = array();
    }
    
    public function guardar(){
        //insertar en bd
        $sql = "insert into actividades(equipo_id,responsable_id,fechaInicio,fechaTermino,enSistema,ubicacion_id,descripcionActividad,estadoActividad_id) values("
                .$this->equipo_id.","
                .$this->responsable_id.","
                ."'".$this->fechaInicio."',"
                ."'".$this->fechaTermino."',"
                .$this->enSistema.","
                .$this->ubicacion_id.","
                ."'".$this->descripcionActividad."',"
                .$this->estadoActividad_id
                .")";
        //echo $sql . "<br />";
        $this->db->query($sql);
        //recuperar nuevo id = $this->db->insert_id
        $lastId = $this->db->insert_id;
        //setid(nuevo id)
        $this->setId($lastId);
        //para cada revision
        $rev = $this->getRevisiones();
        for($i=0;$i<count($rev);$i++){
            //  set id actividad
            $rev[$i]->setActividad_id($this->id);
            //  llamar guardar
            $rev[$i]->guardar();
        }
    }
    
    public function getEquipo(){
        $sql = "select * from equipos where id=" . $this->equipo_id;
        $consulta = $this->db->query($sql);
        $e = $consulta->fetch_object();
        $equipo = new Equipo($e->id,$e->tipoEquipo_id,$e->nombre);
        return $equipo;
    }
    
    public function getResponsable(){
        $sql = "select * from enumtable where tipo like 'tecnico' and id = " . $this->responsable_id;
        $consulta = $this->db->query($sql);
        $resultado = $consulta->fetch_object();
        return $resultado->nombre;
    }
    
    public function getUbicacion(){
        $sql = "select * from enumtable where tipo like 'ubicacion' and id = " . $this->ubicacion_id;
        $consulta = $this->db->query($sql);
        $resultado = $consulta->fetch_object();
        return $resultado->nombre;
    }
    
    public function getEstadoActividad(){
        $sql = "select * from enumtable where tipo like 'estadoActividad' and id = " . $this->estadoActividad_id;
        $consulta = $this->db->query($sql);
        $resultado = $consulta->fetch_object();
        return $resultado->nombre;
    }
    
    public function getRevisionesBD(){
        $sql = "select * from revisionescomponentes where actividad_id=" . $this->id;
        $consulta = $this->db->query($sql);
        $a = array();
        while($f = $consulta->fetch_object()){
            $r = new Revision($f->id,$f->actividad_id,$f->componente_id,$f->estado_id,$f->serial,$f->seteo,$f->observacion);
            $a[] = $r;
        }
        return $a;
    }
    
    function getId() {
        return $this->id;
    }
    function getEquipo_id() {
        return $this->equipo_id;
    }
    function getResponsable_id() {
        return $this->responsable_id;
    }
    function getFechaInicio() {
        return $this->fechaInicio;
    }
    function getFechaTermino() {
        return $this->fechaTermino;
    }
    function getEnSistema() {
        return $this->enSistema;
    }
    function getUbicacion_id() {
        return $this->ubicacion_id;
    }
    function getDescripcionActividad() {
        return $this->descripcionActividad;
    }
    function getEstadoActividad_id() {
        return $this->estadoActividad_id;
    }
    function getRevisiones(){
        return $this->revisionesComponentes;
    }
    
    function setId($id) {
        $this->id = $id;
    }
    function setEquipo_id($equipo_id) {
        $this->equipo_id = $equipo_id;
    }
    function setResponsable_id($responsable_id) {
        $this->responsable_id = $responsable_id;
    }
    function setFechaInicio($fechaInicio) {
        $this->fechaInicio = $fechaInicio;
    }
    function setFechaTermino($fechaTermino) {
        $this->fechaTermino = $fechaTermino;
    }
    function setEnSistema($enSistema) {
        $this->enSistema = $enSistema;
    }
    function setUbicacion_id($ubicacion_id) {
        $this->ubicacion_id = $ubicacion_id;
    }
    function setDescripcionActividad($descripcionActividad) {
        $this->descripcionActividad = $descripcionActividad;
    }
    function setEstadoActividad($estadoActividad) {
        $this->estadoActividad_id = $estadoActividad;
    }
    function addRevision($revNueva){
        $this->revisionesComponentes[] = $revNueva;
    }
    
 }
