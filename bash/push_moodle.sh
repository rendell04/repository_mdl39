#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${RED}copy files${NC}: /var/www/repository/moodle/* -> /var/www/html/moodle"
cp -R /var/www/repository/moodle/* /var/www/html/moodle

echo -e "${GREEN}complete${NC}"

echo -e "${RED}changing permission${NC}: /var/www/repository/moodle -> www-data:www-data"
chown -R www-data:www-data /var/www/html/moodle

echo -e "${GREEN}done${NC}"