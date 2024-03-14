<# This script creates compiles the passed .tex file and places it in the PDF directory
for main.tex run with:
.\build.ps1

for other.tex run with
.\build.ps1 -file other

TEST
#>

param(
    [string]$file = "main"
)

pdflatex $file
biber $file
pdflatex $file
pdflatex $file
$FROM = "$file.pdf"
$TO = "PDF/$file.pdf"
del $TO
mv $FROM $TO