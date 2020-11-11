use sifco_db;

/* insertar pacientes */
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente1', '10-11-2000', 'm', 2323456760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente2', '12-12-2001', 'm', 2323908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente3', '11-01-2002', 'm', 2323908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente4', '09-02-2003', 'm', 2327890680101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente5', '02-05-2004', 'm', 7893908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente6', '03-07-2005', 'h', 2345908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente7', '04-05-2006', 'h', 2233908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente8', '05-07-2007', 'h', 9988908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente9', '06-03-2008', 'h', 7897908760101);
insert into Paciente (nombre_completo, nacimiento, sexo, dpi) values('Paciente10', '08-10-2009', 'm', 567890870101);


/* insertar especialidad */
insert into Especialidad (nombre_especialidad) values ('Pediatria');
insert into Especialidad (nombre_especialidad) values ('Neurologia');
insert into Especialidad (nombre_especialidad) values ('Hematologia');
insert into Especialidad (nombre_especialidad) values ('Hepatologia');
insert into Especialidad (nombre_especialidad) values ('Infectologia');
insert into Especialidad (nombre_especialidad) values ('Radiologia');

/* insertar medico */
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 56798, 'm', '09-01-1990',1);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 13254, 'h', '10-13-1946',6);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 55001, 'm', '06-17-1986',4);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 48245, 'h', '05-11-1976',1);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 22486, 'm', '11-25-1963',2);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 67089, 'h', '10-08-1992',3);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 15002, 'h', '02-15-1948',5);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 34187, 'm', '06-03-1974',2);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 24865, 'h', '05-14-1965',1);
insert into Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values ('Medico1', 56589, 'm', '12-11-1986',6);

/* insertar consulta */
insert into Consulta (fecha, hora_inicio, hora_fin) values ('11-21-2000','8:00', '9:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('11-31-2000','9:00', '10:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('12-12-2000','10:00', '11:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('12-22-2000','8:00', '9:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('12-15-2000','12:00', '13:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('11-13-2000','15:00', '16:00');
insert into Consulta (fecha, hora_inicio, hora_fin) values ('11-14-2000','8:00', '9:00');


/* insertar estado */
insert into Especialidad (nombre_especialidad) values ('pendiente');
insert into Especialidad (nombre_especialidad) values ('en progreso');
insert into Especialidad (nombre_especialidad) values ('finalizado');
insert into Especialidad (nombre_especialidad) values ('cancelado');


/* insertar anexo */
insert into Anexo ( observacion) values ('observacion1');
insert into Anexo ( observacion) values ('observacion2');
insert into Anexo ( observacion) values ('observacion3');
insert into Anexo ( observacion) values ('observacion4');
insert into Anexo ( observacion) values ('observacion5');
insert into Anexo ( observacion) values ('observacion6');

/* insertar medicamento */
insert into Medicamento (nombre_medicamento) values ('Medicamento1');
insert into Medicamento (nombre_medicamento) values ('Medicamento2');
insert into Medicamento (nombre_medicamento) values ('Medicamento3');
insert into Medicamento (nombre_medicamento) values ('Medicamento4');
insert into Medicamento (nombre_medicamento) values ('Medicamento5');
insert into Medicamento (nombre_medicamento) values ('Medicamento6');
insert into Medicamento (nombre_medicamento) values ('Medicamento7');

/* insertar detalle anexo */
insert into Detalle_anexo (anexo, medicamento) values(1, 1);
insert into Detalle_anexo (anexo, medicamento) values(1, 2);
insert into Detalle_anexo (anexo, medicamento) values(1, 3);
insert into Detalle_anexo (anexo, medicamento) values(1, 4);
insert into Detalle_anexo (anexo, medicamento) values(2, 5);
insert into Detalle_anexo (anexo, medicamento) values(3, 6);
insert into Detalle_anexo (anexo, medicamento) values(4, 7);
insert into Detalle_anexo (anexo, medicamento) values(5, 1);
insert into Detalle_anexo (anexo, medicamento) values(6, 2);

/* insertar detalle consulta */
insert into Detalle_consulta (consulta, paciente, medico, estado, proxima_consulta, anexo) values(1,1,1,1,2,1);
insert into Detalle_consulta (consulta, paciente, medico, estado, proxima_consulta, anexo) values(3,2,2,1,4,2);
insert into Detalle_consulta (consulta, paciente, medico, estado, anexo) values(5,3,3,1,3);
insert into Detalle_consulta (consulta, paciente, medico, estado, anexo) values(6,4,4,1,4);

select * from Paciente;
select * from Especialidad;
select * from Medico;
select * from Consulta;
select * from Medicamento;
select * from Detalle_anexo;
select * from Detalle_consulta;

select convert(time, hora_inicio, 8) from Consulta;

create database sifco_db; 
drop database sifco_db;