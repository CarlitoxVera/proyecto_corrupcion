-- Consulta 1: Fecha inicial desde que opera L. Hermosilla en el poder
SELECT MIN(au.fecha) AS fecha_inicial
FROM audit_trail au
JOIN investigation i ON au.related_investigation_id = i.investigation_id
JOIN person_investigation pi ON i.investigation_id = pi.investigation_id
JOIN person p ON pi.person_id = p.person_id
WHERE p.nombre ILIKE '%Luis Hermosilla%';

-- Consulta 2: Año a año los principales colaboradores/aliados
SELECT EXTRACT(YEAR FROM au.fecha) AS anio,
       p.nombre AS colaborador,
       COUNT(*) AS participaciones
FROM audit_trail au
JOIN investigation i ON au.related_investigation_id = i.investigation_id
JOIN person_investigation pi ON i.investigation_id = pi.investigation_id
JOIN person p ON pi.person_id = p.person_id
WHERE p.nombre NOT ILIKE '%Luis Hermosilla%'
GROUP BY anio, colaborador
ORDER BY anio, participaciones DESC;

-- Consulta 3: Listar los medios que publican noticias sobre L. Hermosilla
SELECT DISTINCT pub.fuente AS medio_publicacion
FROM publication pub
JOIN person_publication pp ON pub.publication_id = pp.publication_id
JOIN person p ON pp.person_id = p.person_id
WHERE p.nombre ILIKE '%Luis Hermosilla%'
ORDER BY medio_publicacion;

-- Consulta 4: ¿Qué ministerios están ligados a los actos de L.H?
SELECT institution_id, nombre AS ministerio
FROM institution
WHERE institution_id IN (
    SELECT DISTINCT i.institucion
    FROM investigation i
    JOIN person_investigation pi ON i.investigation_id = pi.investigation_id
    JOIN person p ON pi.person_id = p.person_id
    WHERE p.nombre ILIKE '%Luis Hermosilla%'
);

-- Consulta 5: ¿Qué ministros se han visto involucrados en sus acciones?
SELECT DISTINCT p.nombre AS ministro
FROM person p
JOIN person_investigation pi ON p.person_id = pi.person_id
JOIN investigation i ON pi.investigation_id = i.investigation_id
WHERE p.rol ILIKE ANY (ARRAY[
    '%Exministro%',
    '%Ministro de la Corte Suprema%'
])
AND EXISTS (
    SELECT 1
    FROM person_investigation pi2
    JOIN person p2 ON pi2.person_id = p2.person_id
    WHERE pi2.investigation_id = i.investigation_id
      AND p2.nombre ILIKE '%Luis Hermosilla%'
)
ORDER BY ministro;

-- Consulta 6: ¿Qué partidos políticos se han ligado a L.H.?
SELECT DISTINCT p.afiliacion AS partido_politico
FROM person p
JOIN person_investigation pi ON p.person_id = pi.person_id
JOIN investigation i ON pi.investigation_id = i.investigation_id
WHERE i.investigation_id IN (
    SELECT pi2.investigation_id
    FROM person_investigation pi2
    JOIN person p2 ON pi2.person_id = p2.person_id
    WHERE p2.nombre ILIKE '%Luis Hermosilla%'
)
AND p.afiliacion IS NOT NULL
AND p.afiliacion NOT ILIKE '%Independiente%'
ORDER BY partido_politico;

-- Consulta 7: ¿Qué lazos familiares hay en el poder que tengan relación?
SELECT DISTINCT pr.descripcion AS lazo_familiar, 
       p1.nombre AS persona_1, 
       p2.nombre AS persona_2
FROM person_relation pr
JOIN person p1 ON pr.persona1_id = p1.person_id
JOIN person p2 ON pr.persona2_id = p2.person_id
WHERE pr.descripcion ILIKE '%Hermanos%' 
   OR pr.descripcion ILIKE '%Matrimonio%'
   OR pr.descripcion ILIKE '%Padres%' 
   OR pr.descripcion ILIKE '%Hijos%'
   AND EXISTS (
       SELECT 1
       FROM person_investigation pi
       JOIN investigation i ON pi.investigation_id = i.investigation_id
       WHERE (pi.person_id = p1.person_id OR pi.person_id = p2.person_id)
         AND EXISTS (
             SELECT 1
             FROM person_investigation pi2
             JOIN person p3 ON pi2.person_id = p3.person_id
             WHERE pi2.investigation_id = i.investigation_id
             AND p3.nombre ILIKE '%Luis Hermosilla%'
         )
   )
ORDER BY lazo_familiar, persona_1, persona_2;

-- Consulta 8: ¿Qué eventos como daños colaterales han sucedido desde que se destapó el caso?
SELECT au.fecha AS fecha_evento, 
       au.descripcion AS dano_colateral, 
       i.enfoque AS investigacion
FROM audit_trail au
JOIN investigation i ON au.related_investigation_id = i.investigation_id
WHERE au.tipo ILIKE '%Daño colateral%'
ORDER BY au.fecha;

-- Consulta 9: De los actos enunciados en el audio, ¿qué cosas se pueden considerar delitos o faltas?
SELECT la.descripcion AS acto, 
       la.tipo AS clasificacion,
       i.enfoque AS investigacion
FROM legal_acts la
JOIN investigation i ON la.act_id = i.investigation_id
WHERE la.tipo ILIKE '%delito%' 
   OR la.tipo ILIKE '%falta%'
ORDER BY clasificacion, acto;

-- Consulta 10: ¿De qué universidades son los involucrados en los delitos realizados por LH?
SELECT DISTINCT p.universidad AS universidad_involucrado
FROM person p
JOIN person_investigation pi ON p.person_id = pi.person_id
JOIN investigation i ON pi.investigation_id = i.investigation_id
WHERE EXISTS (
    SELECT 1
    FROM person_investigation pi2
    JOIN person p2 ON pi2.person_id = p2.person_id
    WHERE pi2.investigation_id = i.investigation_id
      AND p2.nombre ILIKE '%Luis Hermosilla%'
)
AND p.universidad IS NOT NULL
ORDER BY universidad_involucrado;

-- Consulta 11: ¿Cuántas horas han pasado desde que se publicó el audio?
SELECT EXTRACT(EPOCH FROM (NOW() - pub.fecha)) / 3600 AS horas_desde_publicacion
FROM publication pub
WHERE pub.titulo ILIKE '%audio%' 
   OR pub.contenido ILIKE '%audio%';

-- Consulta 12: ¿En qué comunas del país se han efectuado proyectos favorecidos por las gestiones de LH?
SELECT DISTINCT pro.comuna AS comuna_proyecto
FROM project pro
JOIN project_person pp ON pro.project_id = pp.project_id
JOIN person p ON pp.person_id = p.person_id
WHERE p.nombre ILIKE '%Luis Hermosilla%'
ORDER BY comuna_proyecto;

-- Consulta 13: ¿Cuántos KBytes de información se han generado para cada categoría de contenidos?
SELECT pub.categoria AS categoria_contenido, 
       SUM(pub.bytes) / 1024 AS tamano_kb
FROM publication pub
WHERE pub.bytes IS NOT NULL
GROUP BY pub.categoria
ORDER BY tamano_kb DESC;

