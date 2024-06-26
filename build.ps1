<# This script creates compiles the passed .tex file and places it in the PDF directory
for main.tex run with:
.\build.ps1

to compile other.tex run with
.\build.ps1 "other"

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
Remove-Item $TO
Move-Item $FROM $TO