#!/bin/bash

# Define source and destination directories
SRC_DIR="web_flask"
DEST_DIR="web_dynamic"

# Create destination directory if it doesn't exist
mkdir -p $DEST_DIR/static
mkdir -p $DEST_DIR/templates

# Copy the specified files and directories
cp -r $SRC_DIR/static $DEST_DIR/
cp $SRC_DIR/templates/100-hbnb.html $DEST_DIR/templates/
cp $SRC_DIR/__init__.py $DEST_DIR/
cp $SRC_DIR/100-hbnb.py $DEST_DIR/

# Rename the copied files
mv $DEST_DIR/100-hbnb.py $DEST_DIR/0-hbnb.py
mv $DEST_DIR/templates/100-hbnb.html $DEST_DIR/templates/0-hbnb.html

# Update the route in the renamed Python file
sed -i "s|/100-hbnb/|/0-hbnb/|g" $DEST_DIR/0-hbnb.py

echo "Files copied and updated successfully.":

