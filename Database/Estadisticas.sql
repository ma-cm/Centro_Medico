/* Total de consultas en progreso por especialidad */
SELECT count(c.codigo) as 'Consultas en Progreso'
FROM Consulta as c, Detalle_consulta as dc
WHERE c.codigo = dc.consulta and dc.estado = 2;


/* Total de consultas pendientes por médico */
SELECT count(c.codigo) as Cuenta, m.nombre_completo as Medico
FROM Consulta as c, Detalle_consulta as dc, Medico as m
WHERE c.codigo = dc.consulta and dc.medico = m.codigo
GROUP BY m.nombre_completo


/* La consulta con mayor duración en minutos, incluir el nombre del paciente y médico tratante de dicha consulta */
SELECT top 1 DATEDIFF(minute, c.hora_inicio, c.hora_fin) as Duracion, p.nombre_completo as Paciente, m.nombre_completo as Medico
FROM Consulta as c, Detalle_consulta as dc, Paciente as p, Anexo as a, Detalle_anexo as da, Medico as m
WHERE c.codigo = dc.consulta  and p.codigo = dc.paciente and a.codigo = dc.anexo and da.anexo = a.codigo and m.codigo = dc.medico
ORDER BY Duracion desc


/* La consulta con menor duración en segundos, incluir el nombre del paciente y médico tratante de dicha consulta */
SELECT  top 1 DATEDIFF(second, c.hora_inicio, c.hora_fin) as Duracion, p.nombre_completo as Paciente, m.nombre_completo as Medico
FROM Consulta as c, Detalle_consulta as dc, Paciente as p, Anexo as a, Detalle_anexo as da, Medico as m
WHERE c.codigo = dc.consulta  and p.codigo = dc.paciente and a.codigo = dc.anexo and da.anexo = a.codigo and m.codigo = dc.medico
ORDER BY Duracion asc

/* El cliente con más medicamentos recetados */
SELECT top 1 count(da.medicamento) as 'Cantidad Medicamento', p.nombre_completo as Paciente
FROM Consulta as c, Detalle_consulta as dc, Paciente as p, Anexo as a, Detalle_anexo as da
WHERE c.codigo = dc.consulta  and p.codigo = dc.paciente and a.codigo = dc.anexo and da.anexo = a.codigo
GROUP BY p.nombre_completo
ORDER BY 'Cantidad Medicamento' desc 

/* El medico hombre que ha atendido a más pacientes mujeres */
SELECT top 1 count(c.codigo) as cuenta, m.nombre_completo as Medico
FROM Consulta as c, Detalle_consulta as dc, Medico as m, Paciente as p
WHERE c.codigo = dc.consulta and dc.medico = m.codigo and p.codigo = dc.paciente and p.sexo = 'm'
GROUP BY m.nombre_completo
ORDER BY cuenta desc 


