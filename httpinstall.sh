#By Tao
#instalFile HTTP
clear
if [[ $1 == "" ]]
then
echo -e "\033[1;32m"
echo -e "=== Install File HTTP ==="
echo "Paste the http file address link "
read -p "Paste link : " HTTP
read -p "Did you put the link correctly..? y/n : " opcao
else
opcao=$1
fi
case $opcao in
  Y | y )
  cd /usr/bin
wget -O a "https://taohumyai.000webhostapp.com/http/adduser.sh"
wget -O b "https://taohumyai.000webhostapp.com/http/testuser.sh"
chmod +x a
chmod +x b
cd /home/vps/public_html/
wget -O HTTP.ehi "$HTTP"
chmod +x HTTP.ehi
cd
;;
  N | n )
  cd
;;
  esac
  