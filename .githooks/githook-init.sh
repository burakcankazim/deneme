#!/bin/bash

# Getting directory of the script to run it independant of current working directory.
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

echo "Activating commit-msg githook..."
echo "################################"

echo "Copying .githooks/commit-msg to .git/hooks/commit-msg..."
cp ./commit-msg ../.git/hooks/commit-msg
echo "################################"

echo "Editing the permissions of the file to make it executable..."
chmod +x ../.git/hooks/commit-msg
echo "################################"
