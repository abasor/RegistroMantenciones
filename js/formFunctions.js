/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function listarEquipos(){
	var equipos_5=new Array("-","8|C301","9|C302","10|C303","11|C304","12|C305","13|C306","14|C307","15|C308","16|C309","17|C310","18|C311","19|C312","20|C313","21|C314","22|C315","23|C316","24|C317","25|C318","26|C319","27|C320","28|C321","29|C322","30|C323","31|C324","32|C325","33|C326","34|C327","35|C328","36|C329","37|C330","38|C330F","39|C331","40|C331F","41|C332","42|C333F","43|C334","44|C335","45|C336","46|C337","47|C361","48|C363","49|C364");
        var equipos_6=new Array("-","58|P201","59|P202","60|P203","61|P204","62|P211","63|P212","64|P213","65|P601","66|P602");
        var equipos_7=new Array("-","50|F101","51|F102","52|F103","53|F104");
        var equipos_8=new Array("-","1|B401","2|B402","3|B403","4|B404","5|B405","6|B406","7|B407","54|M416","55|M417","56|M441","57|M442","67|R501","68|R502","69|R503","70|T611","71|T612","72|T613","73|W421","74|W422","75|W423","76|W424");
        var selectTipos = document.getElementById("tipoEquipo");
        var selectEquipos = document.getElementById("equipos");
        var tipo = selectTipos[selectTipos.selectedIndex].value;
	if (tipo !== 0) {
            equipos=eval("equipos_" + tipo);
            num_equipos = equipos.length;
            selectEquipos.length = num_equipos;
            for(i=0;i<num_equipos;i++){
               var tmp = equipos[i].split("|"); 
               selectEquipos.options[i].value=tmp[0];
               selectEquipos.options[i].text=tmp[1];
            }	
	}else{
            selectEquipos.length = 1;
            selectEquipos.options[0].value = "0";
            selectEquipos.options[0].text = "-";
	}
	selectEquipos.options[0].selected = true;
}
