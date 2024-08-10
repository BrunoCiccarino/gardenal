# Author: Bruno Ciccarino
# License GPL-3
#!/bin/bash

SOURCE_DIR="$(pwd)/plugin"
DESTINATION_DIR="$HOME/.vim/plugins"


if [ ! -d "$SOURCE_DIR" ]; then
    echo "The $SOURCE_DIR directory does not exist."
    exit 1
fi


if [ ! -d "$DESTINATION_DIR" ]; then
   
    mkdir -p "$DESTINATION_DIR"
    if [ $? -ne 0 ]; then
        echo "Failed to create directory $DESTINATION_DIR."
        exit 1
    fi
    echo "$DESTINATION_DIR directory created."
fi

for file in "$SOURCE_DIR"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$DESTINATION_DIR/"
    fi
done


if [ $? -eq 0 ]; then
    echo "Files have been moved from $SOURCE_DIR to $DESTINATION_DIR."
else
    echo "Failed to move files."
    exit 1
fi
