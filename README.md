# Docker with Symfony 

## Docker compose with:
* Apache v2.4.38 (Debian)
* PHP v7.4
* MariaDB 10.5.9
* Symfony latest

## install.sh
This script will install or re-install everything.


## Start containers
Run `start.sh`.

## Project ports        

* localhost:7070 - Symfony
* localhost:8080 - phpMyAdmin 

## File permissions issues
Run `fix_permissions.sh`.

## Other PHP versions
In `Dockerfile` un-comment other PHP versions and run `install.sh`.


## MariaDB Access
user: `dsijakSymfony`          
pass: `dsijakSymfony`      


## server_shell.sh
Run this script to get `composer` and `symfony maker bundle` commands inside containers terminal.

## Any issues?
Install `Portainer` and remove all active containers and volumes and then run `start.sh`.

## Created/tested with:
5.4.118-1-MANJARO/xfce4, docker, portainer.


## Have Fun!

