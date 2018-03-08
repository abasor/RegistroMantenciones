<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Nuevo Evento</title>
    </head>
    <body>
        <form action="actionPage.php" method="post">
            Responsable: <select name="responsable">
                <?php 
                    getTecnicos();
                ?>
            </select><br />
            Ubicación: <select name="ubicacion">
                <?php 
                    getUbicaciones();
                ?>
            </select><br />
            Tipo equipo: <select name="tipoEquipo" onchange="">
                <?php 
                    getTipoEquipos();
                ?>
            </select><br />
            Nombre equipo: <select name="nombreEquipo">
                <?php 
                    getEquipos(5);
                ?>
            </select><br />
            Activo en sistema: <select name="enSistema">
                <option value="1">Sí</option>
                <option value="0">No</option>
            </select><br />
            Inicio actividad: <input type="datetime-local" name="fechaInicio"><br />
            Término actividad: <input type="datetime-local" name="fechaTermino"><br />
            <!--Descripción actividad: <input type="text" name="descripcion" value="" /><br />-->
            Descripción actividad: <textarea name="descripcion" rows="3" cols="40"></textarea><br />
            Estado actividad: <select name="estadoActividad">
                <?php 
                    getEstadoActividades();
                ?>
            </select><br />
            <h3>Revisión componentes</h3>
            <table>
                <tr>
                    <th>Componente</th>
                    <th>Estado</th>
                    <th>Modelo</th>
                    <th>Numero serie / vaor seteo</th>
                    <th>Observaciones</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>

            </table>
            <input type="submit">
        </form>
    </body>
</html>
