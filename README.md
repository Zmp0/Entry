# entry.sh

`entry.sh` is a simple shell script that automatically creates a desktop entry for a Linux application, i use it in bunsenlabs for automating the creations of a desktop entry.

## Usage

Run the script with the following syntax:

Where NAME and COMMAND are rispectively the name of the desktop entry and the command for execute it

```bash
sudo bash entry.sh NAME COMMAND
```

make an alias for speeding up 

```bash
alias desktop='sudo bash [ENTRY-FOLDER-WITHOUT-PARENTESIS]/entry.sh'
```
