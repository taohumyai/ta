#!/bin/bash
echo "=================================="
read -p " Username to edit : " namer
read -p " formato AAAA/MM/DD : " date
chage -E $date $namer 2> /dev/null
echo -e "\033[1;36mChange the data successfully $namer Date: $date\033[0m"
echo -e "\033[1;32m "