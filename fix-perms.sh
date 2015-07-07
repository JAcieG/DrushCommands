#!/bin/bash

DRUSH=/usr/bin/drush
ECHO=/bin/echo

#args=$@

FILE_DIR=$1
echo "Modifying files directory on $FILE_DIR"
echo "Setting up files folder permissions..."
sudo chown :www-data $FILE_DIR
sudo chmod g+ws $FILE_DIR
sudo chmod a+rx $FILE_DIR
sudo chmod g+x $FILE_DIR
echo "Setting up sub-directory permissions..."
sudo find $FILE_DIR -type d -exec chown :www-data {} \;
sudo find $FILE_DIR -type d -exec chmod a+rx {} \;
sudo find $FILE_DIR -type d -exec chmod g+ws {} \;
echo "Setting up recursive file permissions..."
sudo find $FILE_DIR -type f -exec chmod 664 {} \;

echo "finished"
