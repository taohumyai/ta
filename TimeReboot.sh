if [[ $1 == "" ]]
then
echo -e "\033[1;33m "
   echo "===Setting Reboot Time==="
   echo -e "\033[1;32m
   {1} set time reboot
   {2} Disabled reboot"
   echo " "
read -p " print : " opcao
else
opcao=$1
fi
case $opcao in
  01 | 1 )
  echo " "
  echo "=================="
read -p " Time ( 0,1,23 ) : " Hour
read -p " Minute ( 0,1,59 ) : " Minute
echo "$Minute $Hour * * * root /sbin/reboot" > /etc/cron.d/reboot
service cron restart
echo -e "\033[1;36m ";;
 02 | 2 )
echo " " > /etc/cron.d/reboot
service cron restart
echo -e "\033[1;36m ";;
esac
