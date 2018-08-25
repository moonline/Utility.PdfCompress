#!/bin/bash

iconpath=$(dirname "$0")"/icon-pdf-128.png"
description="Compress PDF document by ghostscript

Quality:
⦁ screen (screen-view-only quality, 72 dpi images)
⦁ ebook (low quality, 150 dpi images)
⦁ printer (high quality, 300 dpi images)
⦁ prepress (high quality, color preserving, 300 dpi imgs)
"

fields=$(yad --form --title="Compress PDF document" \
    --window-icon="$iconpath" \
    --image="$iconpath" \
    --width=600 \
    --text="$description" \
    --item-separator=";" \
    --field="Compression":CB 'screen;ebook;^printer;prepress' \
    --field="Document":FL \
    --field="Output directory":DIR \
    --field="Filename" \
    --button="Compress")
    
echo $fields
IFS='|' read -a arguments <<< "${fields}"

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH "-dPDFSETTINGS=/${arguments[0]}" "-sOutputFile=${arguments[2]}/${arguments[3]}" "${arguments[1]}" && echo "Converted ${arguments[1]} to ${arguments[2]}/${arguments[3]}" && xdg-open "${arguments[2]}"
