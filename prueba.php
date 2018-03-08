<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'db/conection.php';
require_once 'models/equipo.php';
require_once 'models/actividad.php';
require_once 'models/revision.php';
require_once 'read.php';
//------------------------------------------------------------------------------
$e = new Equipo(1,5,"C301");
echo "nombre equipo: ".$e->getNombre() . "<br />";
echo "tipo equipo  : ".$e->getTipoEquipo() . "<br />";
echo "<br />";
$a = new Actividad('',8,1,'','',1,12,"mantencion preventiva",22);
echo "responsable : " . $a->getResponsable() ."<br />";
echo "ubicacion : " . $a->getUbicacion() . "<br />";
echo "equipo : " . $a->getEquipo()->getNombre() . "<br />";
/*$v = $a->getRevisionesBD();
for($i=0;$i<count($v);$i++){
    echo $i+1 . ": "
            . $v[$i]->getComponente() . " " 
            . $v[$i]->getEstado() . " " 
            . $v[$i]->getSerial() . " " 
            . $v[$i]->getSeteo() . " " 
            . $v[$i]->getObservacion() . "<br />";
}*/
$r1 = new Revision('',1, 1, 19, "", "", "mantension");
$r2 = new Revision('',1,1,19,"","","mantension");
$r3 = new Revision('',1,1,19,"","","mantension");
$a->addRevision($r1);
$a->addRevision($r2);
$a->addRevision($r3);
$v = $a->getRevisiones();
for($i=0;$i<count($v);$i++){
    echo $i+1 . ": "
            . $v[$i]->getComponente() . " " 
            . $v[$i]->getEstado() . " " 
            . $v[$i]->getSerial() . " " 
            . $v[$i]->getSeteo() . " " 
            . $v[$i]->getObservacion() . "<br />";
}
//$a->guardar();
echo "listo<br />";
require_once 'read.php';
?>
<script type="text/javascript">
    //defino una serie de varibles Array para cada país


//función que cambia las provincias del select de provincias en función del país que se haya escogido en el select de país.
function listarEquipos(){
	var equipos_5=new Array("-","C301","C302");
        var equipos_6=new Array("-","P201","P202");
        var equipos_7=new Array("-","F101","F102");
        var equipos_8=new Array("-","B401","B402");
        var selectTipos = document.getElementById("tipoEquipo");
        var selectEquipos = document.getElementById("equipos");
        var tipo = selectTipos[selectTipos.selectedIndex].value;
	//miro a ver si el pais está definido
	if (tipo !== 0) {
            //si estaba definido, entonces coloco las opciones de la provincia correspondiente.
            //selecciono el array de provincia adecuado
            equipos=eval("equipos_" + tipo);
            //calculo el numero de provincias
            num_equipos = equipos.length;
            //marco el número de provincias en el select
            selectEquipos.length = num_equipos;
            //para cada provincia del array, la introduzco en el select
            for(i=0;i<num_equipos;i++){
               //selectEquipos.options[i].value=equipos[i];
               //selectEquipos.options[i].text=equipos[i];
               var tmp = equipos[i].split("|"); 
               selectEquipos.options[i].value=tmp[0];
               selectEquipos.options[i].text=tmp[1];
            }	
	}else{
            //si no había provincia seleccionada, elimino las provincias del select
            selectEquipos.length = 1;
            //coloco un guión en la única opción que he dejado
            selectEquipos.options[0].value = "-";
            selectEquipos.options[0].text = "-";
	}
	//marco como seleccionada la opción primera de provincia
	selectEquipos.options[0].selected = true;
}    
</script>
Tipo equipo: <select id="tipoEquipo" name="tipoEquipo" onchange="listarEquipos()">
    <option value="0" selected>-</option>
    <?php getTipoEquipos();?>
</select><br />
Equipos: <select id="equipos" name="equipos">
    <option value="0" selected>-</option>
</select>


