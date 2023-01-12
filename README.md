# Plantilla LaTeX para memorias y tesis UTFSM

Plantilla básica en LaTeX para las Memorias y Tesis del [Departamento de Industrias](http://www.industrias.usm.cl) de la [Universidad Técnica Federico Santa María](http://www.usm.cl), Chile.

También podría interesarle:

- [Plantilla Latex (beamer) para Presentaciones](https://github.com/jaimercz/utfsm-beamer): Plantilla para presentaciones basada en `beamer` y que sigue los lineamientos de uso de imagen corporativa de la UTFSM.
- [Plantilla Latex (exam) para Certámenes](https://github.com/jaimercz/utfsm-exam): Plantilla (basada en `exam`) con formatos para la UTFSM.

## Uso de la Plantilla

Para usar esta plantilla tan sólo debe:

* cambiar parámetros básicos como autor y fecha en el documento de configuración (`config.tex`),
* modificar los archivos de apoyo (portada, resumen, capítulos, etc.) que desee, y
* compilar el documento maestro `memoria.tex` (usando una consola LaTeX o su editor favorito):

		$ pdflatex memoria.tex
		$ biber memoria
		$ pdflatex memoria.tex
		$ pdflatex memoria.tex

**NOTA:** `pdflatex` debe ejecutarse (en consola) tres veces, como se indica y en   el orden mostrado para que latex pueda construir las Tablas de Contenidos y las referencias cruzadas de la Bibliografía.

O, puede ocupar el editor de su preferencia (recuerde configurarlo para usar `biber`y no `bibtex`).

### Documentación

Toda la documentación está contenida en el archivo de salida (`memoria.pdf`), incluyendo información sobre las normas UTFSM empleadas para su confección.

[Descargar archivo `memoria.pdf`](https://github.com/jaimercz/utfsm-thesis/blob/master/memoria.pdf)

### Acerca de la Bibliografía
La bibliografía está contenida en el archivo `bibliography.bib`. Esta versión ocupa `biber` en lugar de `bibtex/natbib`. Biber es moderno y maneja además distintos idiomas para la presentación y ordenamiento de la bibliografía.

## Plataformas Soportadas

Esta plantilla es independiente de la plataforma empleada (Windows, Mac o Linux), sin embargo, debe tener cuidado con la codificación de caracteres por defecto.

### Codificación de caracteres (UTF-8)
La plantilla en LaTeX (`memoria.tex`) fue escrita usando una codificación de caracteres UTF-8 o *unicode*. MS Windows (y en ocasiones MAC OSX) ocupan por defecto otro tipo de codificación. Por esto, asegúrese que el editor LaTeX que esté ocupando esté configurado para usar UTF-8; o, puede cambiar la codificación de la plantilla de UTF-8 a Windows-1252 (o Mac Roman).

**NOTA:** No mezcle archivos con codificaciones diferentes o los resultados no serán los esperados.

### Compatibilidad con Overleaf (y otros editores en línea)

Esta versión es compatible con procesadores de texto en línea como [Overleaf](https://overleaf.com), Papeeria, o Authorea.

## Contribuciones

Puede hacerlas directamente en [Issues](https://github.com/jaimercz/utfsm-thesis/issues).

## Licencia

> The MIT License (MIT), 2016-2023

(Básicamente puede usarlo siempre que se mantenga la referencia al autor original en el código fuente).

**Nota:** Las imágenes (asociadas a la UTFSM) son propiedad intelectual de la [Universidad Técnica Federico Santa María](https://www.usm.cl).
