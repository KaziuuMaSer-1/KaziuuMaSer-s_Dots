#!/bin/bash
PDF="$1"
BASE="${PDF%.pdf}"
pdftoppm -r 300 -png "$PDF" "${BASE}_page"
for img in "${BASE}_page"*.png; do
    tesseract "$img" "${img%.png}_ocr" -l pol pdf
    rm "$img"
done
pdfunite "${BASE}_page"*_ocr.pdf "${BASE}_f.pdf"
rm "${BASE}_page"*_ocr.pdf
echo "Gotowe: ${BASE}_searchable.pdf"
