#!/bin/bash

if [ "$#" -lt 2 ] || ["$#" -gt 3 ]; then
    echo "Usage: ./entry.sh NAME COMMAND ICON_PATH

--------------------------------------------------
- NAME : Name of the desktop entry name.           
- COMMAND : Command to execute when launching.   
- ICON_PATH : Is optional,if not given does not display an icon.
--------------------------------------------------
"
    exit 1
fi

NAME=$1
COMMAND=$2
ICON_PATH=$3

DESKTOP_DIR="/usr/share/applications"
DESKTOP_FILE="$DESKTOP_DIR/$NAME.desktop"

cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Type=Application
Name=$NAME
Comment=
Exec=$COMMAND
Icon=$ICON_PATH
Terminal=False
Categories=
Keywords=
EOL

chmod +x "$DESKTOP_FILE"
echo "Desktop entry '$NAME' created at $DESKTOP_FILE"

