# Proyecto Corrupción - Base de Datos

Este proyecto tiene como objetivo modelar, implementar y analizar las relaciones entre personas, instituciones y empresas involucradas en casos de corrupción destapados por el audio del abogado Luis Hermosilla en 2023.

## Objetivo del Proyecto
Proporcionar una herramienta para analizar y registrar datos relacionados con eventos de corrupción, destacando conexiones y patrones de interés.

## Estructura del Repositorio
- **sql/**: Contiene los scripts SQL de exportación de las tablas y el modelo ER en formato PDF.
- **README.md**: Archivo con la descripción del proyecto.
- **configuración.env**: Variables de configuración del entorno.
- **pasos_realizados.org**: Documentación detallada de las acciones realizadas.

## Requisitos del Sistema
- PostgreSQL (versión 13 o superior)
- Git
- Python (versión 3.8 o superior)

## Instrucciones
1. Configura PostgreSQL y crea la base de datos `proyecto_corrupcion`.
2. Ejecuta los scripts SQL de la carpeta `sql` para crear las tablas y cargar los datos.
3. Utiliza los scripts o las consultas predefinidas para explorar los datos y generar reportes.

## Consultas Implementadas
### Consultas Solicitadas por el Profesor
1. Fecha inicial desde que opera Luis Hermosilla en el poder.
2. Extraer año a año los principales colaboradores/aliados.
3. Listar los medios que publican noticias sobre L. Hermosilla.
4. ¿Qué ministerios están ligados a los actos de L. Hermosilla?
5. ¿Qué ministros se han visto involucrados en sus acciones?
6. ¿Qué partidos políticos se han ligado a L. Hermosilla?
7. ¿Qué lazos familiares hay en el poder que tengan relación?
8. Eventos como daños colaterales desde que se destapó el caso.
9. De los actos enunciados en el audio, ¿qué cosas se pueden considerar delitos o faltas?
10. ¿De qué universidades son los involucrados en los delitos realizados por L. Hermosilla?
11. ¿Cuántas horas han pasado desde que publicó el audio?
12. ¿En qué comunas del país se han efectuado proyectos que han sido favorecidos por las gestiones de L. Hermosilla?

### Consultas Adicionales
1. Identificar los años con mayor cantidad de publicaciones relacionadas con casos de corrupción.
2. ¿Qué empresas están directamente involucradas en proyectos favorecidos?
3. Relación entre instituciones y empresas vinculadas a L. Hermosilla.
4. Listar los tipos de industrias afectadas por las investigaciones.
5. ¿Qué personas tienen múltiples roles en diferentes investigaciones?
6. Análisis de tendencias en la cantidad de daños colaterales reportados por año.
7. Clasificar publicaciones por categoría (videos, imágenes, artículos).
8. ¿Qué investigaciones están conectadas a múltiples instituciones?
9. Identificar instituciones recurrentes en las noticias relacionadas.
10. ¿Qué proyectos han sido cancelados debido a las investigaciones?

## Cambios Recientes
1. Exportación de tablas a archivos CSV.
2. Implementación de nuevas consultas y resultados.
3. Sincronización de todos los cambios en el repositorio.

## Estado del Proyecto
- [x] Introducción del proyecto
- [x] Iniciar un registro de proyecto
- [x] Recolectar información
- [x] Modelar un esquema de base de datos
- [x] Generar los archivos CSV para cargar a tablas
- [x] Resolver las consultas solicitadas
- [x] Proponer consultas adicionales
- [x] Implementar scripts para roles, bases de datos y backups

## Colaboradores
- Carlos Vera
- Karla Sandoval

## Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo `LICENSE` para más detalles.

Prueba de sincronización
