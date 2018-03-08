/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Alex Bastías
 * Created: 27-02-2018
 */

-- -----------------------------------------------------
-- Data for table `dbsihve`.`actividades`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbsihve`;
INSERT INTO `dbsihve`.`actividades` (`id`, `equipo`, `tipoEquipo_id`, `responsable_id`, `fechaInicio`, `fechaTermino`, `enSistema`, `ubicacion_id`, `descripcionActividad`, `estadoActividad_id`) VALUES (1, 8, 5, 1, '11-2-2018 15:40', '11-2-2018 16:00', 1, 12, 'manencion preventiva', 22);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dbsihve`.`componentes`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbsihve`;
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (1, 'hub LP', 'winsys');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (2, 'hub HP', 'winsys');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (3, 'hub LP', 'uhp');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (4, 'hub HP', 'uhp');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (5, 'pantalla', 'leica 8');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (6, 'pantalla', 'leica 12');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (7, 'pantalla', 'jigsaw 8');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (8, 'pantalla', 'jigsaw 12');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (9, 'gps', 'g3 (L1/L1)');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (10, 'gps', 'g3 (L1/L2)');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (11, 'gps', 'g5');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (12, 'gps', 'garmin');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (13, 'antena wifi', '2.4');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (14, 'antena wifi', '4.9');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (15, 'timer', 'legrand');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (16, 'signos vitales', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (17, 'conectores fms', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (18, 'display cas', 'qc250');
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (19, 'antena cas', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (20, 'conectores cas', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (21, 'mastil cas', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (22, 'cable pantalla fms', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (23, 'amarras plasticas', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (24, 'conduits', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (25, 'otro fms', NULL);
INSERT INTO `dbsihve`.`componentes` (`id`, `nombre`, `modelo`) VALUES (26, 'otro cas', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dbsihve`.`revisionesComponentes`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbsihve`;
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (1, 1, 3, 19, NULL, NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (2, 1, 7, 19, '168130091', NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (3, 1, 22, 19, NULL, NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (4, 1, 12, 19, NULL, NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (5, 1, 14, 19, NULL, NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (6, 1, 17, 19, NULL, NULL, NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (7, 1, 15, 19, '', '2 hrs', NULL);
INSERT INTO `dbsihve`.`revisionesComponentes` (`id`, `actividad_id`, `componente_id`, `estado_id`, `serial`, `seteo`, `observacion`) VALUES (8, 1, 16, 19, NULL, NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dbsihve`.`enumTable`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbsihve`;
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (1, 'tecnico', 'rafael alarcon');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (2, 'tecnico', 'rodrigo gomez');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (3, 'tecnico', 'luis alvarado');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (4, 'tecnico', 'romulo navea');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (5, 'equipo', 'caex');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (6, 'equipo', 'pala');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (7, 'equipo', 'perforadora');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (8, 'equipo', 'auxiliar');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (9, 'ubicacion', 'bahía');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (10, 'ubicacion', 'botadero 2');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (11, 'ubicacion', 'botadero 4');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (12, 'ubicacion', 'casino mina');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (13, 'ubicacion', 'chancado');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (14, 'ubicacion', 'fase 1');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (15, 'ubicacion', 'fase 2');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (16, 'ubicacion', 'fase 3');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (17, 'ubicacion', 'fase 4');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (18, 'ubicacion', 'fase 5');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (19, 'estadoComponentes', 'bueno');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (20, 'estadoComponentes', 'malo');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (21, 'estadoComponentes', 'desgastado');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (22, 'estadoActividad', 'resuelto');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (23, 'estadoActividad', 'pendiente por cambio de turno');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (24, 'estadoActividad', 'pendiente por falta de repuestos');
INSERT INTO `dbsihve`.`enumTable` (`id`, `tipo`, `nombre`) VALUES (25, 'estadoActividad', 'pendiente');

COMMIT;


-- -----------------------------------------------------
-- Data for table `dbsihve`.`equipos`
-- -----------------------------------------------------
START TRANSACTION;
USE `dbsihve`;
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B401');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B402');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B403');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B404');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B405');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B406');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'B407');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C301');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C302');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C303');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C304');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C305');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C306');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C307');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C308');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C309');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C310');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C311');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C312');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C313');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C314');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C315');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C316');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C317');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C318');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C319');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C320');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C321');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C322');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C323');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C324');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C325');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C326');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C327');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C328');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C329');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C330');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C330F');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C331');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C331F');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C332');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C333F');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C334');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C335');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C336');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C337');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C361');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C363');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(5,'C364');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(7,'F101');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(7,'F102');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(7,'F103');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(7,'F104');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'M416');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'M417');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'M441');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'M442');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P201');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P202');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P203');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P204');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P211');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P212');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P213');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P601');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(6,'P602');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'R501');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'R502');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'R503');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'T611');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'T612');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'T613');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'W421');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'W422');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'W423');
INSERT INTO dbsihve.equipos(tipoEquipo_id,nombre) VALUES(8,'W424');


COMMIT;


