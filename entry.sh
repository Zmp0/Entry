#!#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./entry.sh NAME COMMAND"
    exit 1
fi

# Assign variables to the arguments provided by the user
NAME=$1
COMMAND=$2

# Define the directory where the desktop entry will be created
DESKTOP_DIR="/usr/share/applications"

# Create the desktop entry file
DESKTOP_FILE="$DESKTOP_DIR/$NAME.desktop"

# Write the desktop entry content using the user-provided NAME and COMMAND
cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Type=Application
Name=$NAME
Comment=
Exec=$COMMAND
Icon=/usr/share/icons/Numix/48/apps/ppa.svg
Terminal=False
Categories=
Keywords=
EOL

chmod +x "$DESKTOP_FILE"
echo "Desktop entry '$NAME' created at $DESKTOP_FILE"

