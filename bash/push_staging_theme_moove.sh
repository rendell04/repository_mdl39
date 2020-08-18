#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${RED}flushing${NC}: /var/www/html/moodle39/theme/moove/*"
rm -rf /var/www/html/moodle39/theme/moove/*
echo -e "${GREEN}complete${NC}"

echo -e "${RED}copy files${NC}: /var/www/repository_mdl39/theme/moove/* -> /var/www/html/moodle39/theme/moove/"
cp -R /var/www/repository_mdl39/theme/moove/* /var/www/html/moodle39/theme/moove

echo -e "${GREEN}complete${NC}"

echo -e "${RED}changing permission${NC}: /var/www/html/moodle39/theme/moove -> www-data:www-data"
sudo chown -R www-data:www-data /var/www/html/moodle39/theme/moove

echo -e "${GREEN}done${NC}"