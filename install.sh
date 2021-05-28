#!/bin/bash

declare -ir FALSE=0
declare -ir TRUE=(!FALSE)
PRESS_ANY_KEY=$'  This will (re)install Symfony installation, rebuild docker compose and reset file permissions.\n  Press any key to continue...\n'

echo "  DSIJAK: APACHE + PHP7.4 + DOCKER + SYMFONY INSTALL"

read -n 1 -s -r -p "$PRESS_ANY_KEY"

WORK_DIR=$(pwd);
DOCKER_DIR=$WORK_DIR'/docker';
PHP_DIR=$WORK_DIR'/project';
DOCKER_COMPOSE_FILE=$WORK_DIR'/docker-compose.yml';


if [ -d $PHP_DIR ]; then

  sudo rm -r $PHP_DIR ; 
  mkdir $PHP_DIR ;
  docker-compose -f $DOCKER_COMPOSE_FILE build ;
  sudo chmod -R 777 $WORK_DIR ;
  echo "  DSIJAK: Done! "  

else 
    
  mkdir $PHP_DIR ;
  docker-compose -f $DOCKER_COMPOSE_FILE build ;
  sudo chmod -R 777 $WORK_DIR ;
  echo "  DSIJAK: Done! "  
    
fi
