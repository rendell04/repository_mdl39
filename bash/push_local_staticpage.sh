#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${RED}flushing${NC}: /var/www/html/moodle/local/staticpage/*"
rm -rf /var/www/html/moodle/local/staticpage/*
echo -e "${GREEN}complete${NC}"

echo -e "${RED}copy files${NC}: /var/www/repository/local/staticpage/* -> /var/www/html/moodle/local/staticpage/"
cp -R /var/www/repository/local/staticpage/* /var/www/html/moodle/local/staticpage/

echo -e "${GREEN}complete${NC}"

echo -e "${RED}changing permission${NC}: /var/www/html/moodle/local/staticpage -> www-data:www-data"
chown -R www-data:www-data /var/www/html/moodle/local/staticpage

echo -e "${GREEN}done${NC}"