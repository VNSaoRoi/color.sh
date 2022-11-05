#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo "${RED}This is some red text, ${ENDCOLOR}"
echo  "${GREEN}And this is some green text${ENDCOLOR}"

echo " No color \\\e[0m";
echo "\e[1m BOLD char \\\e[1m ${ENDCOLOR}";
echo "\e[4m Underlined Char \\\e[4m ${ENDCOLOR}";
echo "\e[5m Blinking Char \\\e[5m ${ENCOLOR}";
echo "\e[7m Reverse video Char \\\e[7m ${ENCOLOR}";

print_color ()  {       
        for i in $(seq $s $e)
                do
                COLOR="\e[${i}m"
                echo "$COLOR Color \\\e[${i}m $ENDCOLOR "
                #echo "$i"
                done
        }
for num in $(seq 1 4)
do 
        if test "$num" = "1"
        then
                s=30;
                e=37;
                print_color;
        elif test "$num" = "2"
        then
                s=40
                e=47
                print_color;
        elif test "$num" = "3"
        then
                s=90
                e=97
                print_color;
        elif test "$num" = "4"
        then
                s=100
                e=107
                print_color;
        fi
done
echo "\e[31;44m combie red and blue \\\e[31;44m \e[0m"
