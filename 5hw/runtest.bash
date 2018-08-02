#!/usr/bin/bash

./compile.bash
cp I053040008.pa5 XLgrep

clear
echo "------------------------ End ----------------------"
echo
./XLgrep -nowB 42 -wiffle --color "[0-9][0-9]*"
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter] ..."
clear

clear
echo "------------The output below should be------------"
echo "1{9|"
echo "2}0"
echo --
echo "2{9|"
echo "3}0"
echo "------------------------ End ----------------------"
echo
seq 50 | ./XLgrep "9 [23]" -C0
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter] ..."
clear

echo "------------The output below should be------------"
echo "{a b c} {d|"
echo "e f}"
echo "g h i} {j k l} m"
echo "------------------------ End ----------------------"
echo
echo "a b c d@e f@g h i j k l m" | tr @ "\n" | ./XLgrep "[a-m] [a-m] [a-m]"
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter]..."
clear

echo "------------The output below should be------------"
echo "{a b c} {d|"
echo "|"
echo "g h} {i j k} l m"
echo "------------------------ End ----------------------"
echo
echo "a b c d@@g h i j k l m" | tr @ "\n" | ./XLgrep "[a-m] [a-m] [a-m]"
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter] ..."
clear

echo "---------------------The output below should be------------------------------"
echo "4703:have a mind to visit the ocean depths two or three vertical {leagues|"
echo "4704:beneath} the surface, I use maneuvers that are more time-consuming"
echo "------------------------------- End ------------------------------------------"
echo
./XLgrep "leagues beneath" leagues.txt --color -n
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter] ..."
clear

echo "---------------------The output below should be------------------------------"
echo "9130:Our lights produced a {thousand delightful effects while playing over"
echo "9131:these brightly colored boughs.  I fancied I saw these cylindrical,|"
echo "9132:membrane-filled tubes trembling beneath} the water's undulations."
echo "------------------------------- End ------------------------------------------"
echo
./XLgrep "thousand .* beneath" leagues.txt --color -n
echo
echo "------------------------ End ----------------------"
read -rp "Press [Enter] ..."
clear
