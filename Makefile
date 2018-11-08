md:
	jupyter nbconvert Ejercicios\ de\ Series\ de\ Tiempo\ en\ R.ipynb --to markdown --TemplateExporter.exclude_output=True --TemplateExporter.exclude_code_cell=True

md_with_output:
	jupyter nbconvert Ejercicios\ de\ Series\ de\ Tiempo\ en\ R.ipynb --to markdown

pdf: md
	python md2pdf.py Ejercicios\ de\ Series\ de\ Tiempo\ en\ R.md Ejercicios\ de\ Series\ de\ Tiempo\ en\ R\ -\ sin\ output.pdf
pdf_with_output: md_with_output
	python md2pdf.py Ejercicios\ de\ Series\ de\ Tiempo\ en\ R.md Ejercicios\ de\ Series\ de\ Tiempo\ en\ R\ -\ con\ output.pdf

pdf2:
	jupyter nbconvert Ejercicios\ de\ Series\ de\ Tiempo\ en\ R.ipynb --to pdf --TemplateExporter.exclude_code_cell=True

build: pdf_with_output pdf
