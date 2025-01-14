-- Consulta 1: Implicados con más de una investigación
SELECT p.nombre AS implicado, COUNT(DISTINCT pi.investigation_id) AS cantidad_investigaciones
FROM person_investigation pi
JOIN person p ON pi.person_id = p.person_id
GROUP BY p.nombre
HAVING COUNT(DISTINCT pi.investigation_id) > 1
ORDER BY cantidad_investigaciones DESC;

-- Consulta 2: Primera y última publicación de Luis Hermosilla
SELECT MIN(pub.fecha) AS primera_publicacion, MAX(pub.fecha) AS ultima_publicacion
FROM publication pub
JOIN person_publication pp ON pub.publication_id = pp.publication_id
JOIN person p ON pp.person_id = p.person_id
WHERE p.nombre ILIKE '%Luis Hermosilla%';

-- Consulta 3: Instituciones con más investigaciones
SELECT inst.nombre AS institucion, COUNT(*) AS cantidad_investigaciones
FROM investigation i
JOIN institution inst ON i.institucion = inst.institution_id
GROUP BY inst.nombre
ORDER BY cantidad_investigaciones DESC;

-- Consulta 4: Porcentaje de investigaciones relacionadas con tráfico de influencias
SELECT ROUND(
    (COUNT(*) FILTER (WHERE i.enfoque ILIKE '%tráfico de influencias%')::NUMERIC / COUNT(*) * 100), 2
) AS porcentaje_trafico_influencias
FROM investigation i;

-- Consulta 5: Proyectos realizados en comunas relacionadas con Luis Hermosilla
SELECT pro.comuna AS comuna_proyecto, COUNT(*) AS cantidad_proyectos
FROM project pro
JOIN project_person pp ON pro.project_id = pp.project_id
JOIN person p ON pp.person_id = p.person_id
WHERE p.nombre ILIKE '%Luis Hermosilla%'
GROUP BY pro.comuna
ORDER BY cantidad_proyectos DESC;

-- Consulta 6: Asesores legales involucrados en más de una investigación
SELECT p.nombre AS asesor_legal, COUNT(DISTINCT pi.investigation_id) AS cantidad_investigaciones
FROM person_investigation pi
JOIN person p ON pi.person_id = p.person_id
WHERE pi.rol_en_investigacion ILIKE '%asesor legal%'
GROUP BY p.nombre
HAVING COUNT(DISTINCT pi.investigation_id) > 1
ORDER BY cantidad_investigaciones DESC;

-- Consulta 7: Publicación más grande en tamaño
SELECT pub.titulo AS titulo_publicacion, pub.bytes / 1024 AS tamano_kb
FROM publication pub
WHERE pub.bytes IS NOT NULL
ORDER BY tamano_kb DESC
LIMIT 1;

-- Consulta 8: Personas con más relaciones documentadas
SELECT p.nombre AS persona, COUNT(*) AS cantidad_relaciones
FROM person_relation pr
JOIN person p ON pr.persona1_id = p.person_id OR pr.persona2_id = p.person_id
GROUP BY p.nombre
ORDER BY cantidad_relaciones DESC;

-- Consulta 9: Investigaciones con evidencias clave
SELECT DISTINCT i.enfoque AS investigacion
FROM investigation i
JOIN audit_trail au ON i.investigation_id = au.related_investigation_id
WHERE au.tipo ILIKE '%evidencia clave%';

-- Consulta 10: Empresas involucradas en investigaciones
SELECT c.nombre AS empresa, COUNT(*) AS cantidad_investigaciones
FROM company c
JOIN company_person cp ON c.company_id = cp.company_id
JOIN person p ON cp.person_id = p.person_id
JOIN person_investigation pi ON p.person_id = pi.person_id
GROUP BY c.nombre
ORDER BY cantidad_investigaciones DESC;
