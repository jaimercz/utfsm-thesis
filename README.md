# Plantilla LaTeX para memorias UTFSM

Plantilla básica en LaTeX para las Memorias y Tesis del [Departamento de Industrias](http://www.industrias.usm.cl) de la [Universidad Técnica Federico Santa María](http://www.usm.cl), Chile.

## Uso

Para usar esta plantilla tan sólo debe:

* cambiar parámetros básicos como autor y fecha en el documento de configuración (`config.tex`),
* modificar los archivos de apoyo (portada, resumen, capítulos, etc.) que desee, y
* compilar el documento maestro `memoria.tex` (usando una consola LaTeX o su editor favorito):

		$ pdflatex memoria.tex
		$ bibtex memoria
		$ pdflatex memoria.tex
		$ pdflatex memoria.tex

**NOTA:** `pdflatex` debe ejecutarse (en consola) tres veces, como se indica y en   el orden mostrado para que latex pueda construir las Tablas de Contenidos y las referencias cruzadas de la Bibliografía.

**NOTA 2:** Si se encuentra en un ambiente Mac OSX o linux, puedes correr el comando desde la terminal:

		$ make

este cual llamara el Makefile el cual generara el pdf sin necesidad de correr los 4 comandos mencionados anteriormente. Para esto solo se debe instalar `rubber`, disponible para OSX y linux.

### Documentación

Toda la documentación está contenida en el archivo de salida (`memoria.pdf`), incluyendo información sobre las normas UTFSM empleadas para su confección.

### Acerca de la Bibliografía
La bibliografía está contenida en el archivo `bibliography.bib`, y los estilos bibliográficos están en el archivo `thesis_utfsm.bst` (que básicamente es una castellanización de las normas APA, *American Psychological Association*).

**Nota:** Las normas APA requieren que todas las entradas bibliográficas (incluyendo **webpage**) tengan un año (*year*) definido. Si al compilar ve referencias extrañas en lugar de los nombres de los autores de artículos citados, entonces lo más probable es que tenga un problema con el año de una de sus referencias.

**Recomendación:** Ocupe un editor bibliográfico como Mendeley o BibDesk.

## Plataformas Soportadas

Esta plantilla es independiente de la plataforma empleada (Windows, Mac o Linux), sin embargo, debe tener cuidado con la codificación de caracteres por defecto.

### Codificación de caracteres (UTF-8)
La plantilla en LaTeX (`memoria.tex`) fue escrita usando una codificación de caracteres UTF-8 o *unicode*. MS Windows (y en ocasiones MAC OSX) ocupan por defecto otro tipo de codificación. Por esto, asegúrese que el editor LaTeX que esté ocupando esté configurado para usar UTF-8; o, puede cambiar la codificación de la plantilla de UTF-8 a Windows-1252 (o Mac Roman).

**NOTA:** No mezcle archivos con codificaciones diferentes o los resultados no serán los esperados.

## Contribuciones

Puede hacerlas directamente en [Issues](https://github.com/jaimercz/utfsm-thesis/issues).

## Licencia

> The MIT License (MIT), 2016


**Nota:** Las imágenes son propiedad intelectual de la Universidad Técnica Federico Santa María.
