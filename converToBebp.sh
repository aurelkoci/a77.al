#!/bin/bash
# ==========================================================
#  Konvertim imazhesh (.jpg, .jpeg, .png) në .webp
#  Me fshirje automatike të skedarëve origjinalë pas suksesit
# ==========================================================

# ========== KONFIGURIMI (NDRYSHO KËTU!) ==========
CWEBP_PATH="$HOME/Downloads/libwebp-1.6.0-linux-x86-64/bin/cwebp"
TARGET_DIR="/home/aurel/Desktop/code/online/a77/a77.al/public/projekte"   # Direktoriumi bazë
# =================================================

# --- Kontrolli i parametrave ---
if [ $# -eq 1 ] && [ -d "$1" ]; then
    TARGET_DIR="$1"
elif [ $# -ge 2 ]; then
    if [ -x "$1" ]; then CWEBP_PATH="$1"; fi
    if [ -d "$2" ]; then TARGET_DIR="$2"; fi
fi

# --- Verifikime ---
if [ ! -x "$CWEBP_PATH" ]; then
    echo "Gabim: cwebp nuk gjendet ose nuk ekzekutohet: $CWEBP_PATH"
    exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "Gabim: direktoria nuk ekziston: $TARGET_DIR"
    exit 1
fi

# --- Kalojmë në direktorinë e synuar dhe konvertojmë ---
cd "$TARGET_DIR" || exit 1

echo "Konvertoj dhe pastroj imazhet në: $(pwd)"

find . -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -exec bash -c '
    cwebp="$1"
    input="$2"
    output="${input%.*}.webp"
    
    if [ ! -f "$output" ]; then
        # Ekzekutojmë konvertimin brenda një kushti "if" për t`u siguruar që ka sukses
        if "$cwebp" -q 80 -quiet "$input" -o "$output"; then
            rm "$input"
            echo "✅ Konvertuar dhe fshirë origjinali: $input"
        else
            echo "❌ Gabim gjatë konvertimit! Origjinali NUK u fshi: $input"
        fi
    else
        # Nëse skedari .webp ekziston tashmë, fshijmë origjinalin e mbetur
        echo "⚠️ $output ekziston tashmë. Fshihet origjinali: $input"
        rm "$input"
    fi
' _ "$CWEBP_PATH" {} \;

echo "✅ Procesi i konvertimit dhe pastrimit përfundoi!"