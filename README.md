# Fundamentos_del_analisis_de_datos_Trabajo_en_grupo

*Práctica OD 2021-2022.pdf*

Enunciado de la práctica.

*PARTE 1 - SCRAPER.ipynb*

Este documento extrae de la página web http://gestiona.madrid.org/azul_internet/html/web/DatosEstacion24Accion.icm?ESTADO_MENU=2_1 la tabla de datos mediante BeautifulSoup. 
Recoge los datos de la estación de calidad del aire de Getafe de las últimas 24 horas.  
Se extraen los nombres de las columnas, luego los datos de la tabla y después se renombran las columnas e índices. Todos los datos con código txt07azu son los de la tabla y se busca strong y small para extraer los nombres y valores de los nombres de las columnas y de las unidades de medida.
Finalmente, se genera el csv "datosscraper.csv"

*datosscraper.csv*

Es el csv generado con la parte 1.

*calidad_aire_datos_meteo_mes.csv*

Documento que recoge los datos meteorológicos oficiales de la Agencia Estatal de Meteorología (AEMET), por día, hora, mes y año, así como la estación concreta y el municipio.
Se extraen del enlace https://datos.comunidad.madrid/catalogo/dataset/596e82e2-0bb4-4792-8a6c-5cca5702d04d/resource/3da128fa-fbb7-491d-a316-675d5ecf99c2/download/calidad_aire_datos_meteo_mes.csv

*PARTE 2 - DATOS SEMÁNTICOS.ipynb*

Este documento recoge los datos de calidad del aire del enlace previo. Se extraen los valores con rdflib y se genera el gráfico. 
Se exporta todo a un rdf en formato xml.

*estaciones_data.xml*

RDF producido por la parte 2. 

*calidad_aire_estaciones.csv*

*diagramaUML.pdf*
