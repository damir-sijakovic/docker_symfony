#!/bin/sh 


if [ -d /var/www/var ]; then

  echo "  Skip Symfony install. Already have project. "  
         
else 

  cd /var/www/
  composer create-project symfony/website-skeleton .
  #composer create-project symfony/skeleton .
  
  rm /var/www/.env
  cp /usr/local/bin/_symfony_env /var/www/.env
  cp /usr/local/bin/_symfony_htaccess /var/www/public/.htaccess
  chmod -R 777 /var/www/
  
fi

chmod -R 777 /var/www/
apache2-foreground

