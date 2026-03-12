# entry.sh

`entry.sh` is a simple shell script that automatically creates a desktop entry for a Linux application, i use it in bunsenlabs for automating the creations of a desktop entry.

## Usage

Run the script with the following syntax:

NAME : name of the desktop entry
COMMAND : the command for execute it
ICON_PATH : the path to an icon of you want to add it,is optional.

### If you want to install it:

```bash
git clone https://github.com/Zmp0/Entry.git && cd Entry && sudo cp entry.sh /usr/bin/entry 
```

Usage:

```bash
sudo entry NAME "COMMAND" ICON_PATH
```

### If you don't want to install it,just run:

```bash
sudo entry.sh NAME "COMMAND" ICON_PATH
```

