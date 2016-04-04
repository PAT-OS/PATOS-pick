#!/bin/sh
clear
clear
echo
echo "Please run this script and all that follow as root"
echo
PS3="chose your option (1-4):"  
select name in PATOS-DESKTOP PATOS-OTG PATOS-PI PATOS-SERVER PATOS-TC 
do  
  	break  
done  
echo "You picked $name." 
if [ "$name" = "PATOS-DESKTOP" ]; then 
echo  
echo "DOWNLOADING PATOS-DESKTOP" 
sleep 2 
git clone https://github.com/ppigmans/PATOS
exit 1 
fi 

 
if [ "$name" = "PATOS-PI" ]; then 
echo 
echo "DOWNLOADING PATOS-PI"
git clone https://github.com/ppigmans/PATOS-PI
exit 1 
fi 

 
if [ "$name" = "service-pi-installer-EN" ]; then 
echo 
echo "starting service-pi installer in English" 
sleep 2 
sh ./.hidden/service-pi-install-EN.sh 
exit 1 
fi 
 
 if [ "$name" = "PATOS-TC" ]; then 
echo  
echo "DOWNLOADING PATOS-THINCLIENT" 
sleep 2 
git clone https://github.com/ppigmans/PATOS-THINCLIENT
exit 1 
fi 

if [ "$name" = "PATOS-OTG" ]; then 
echo  
echo "DOWNLOADING PATOS ON THE GO" 
sleep 2 
git clone https://github.com/ppigmans/PATOS-OTG
exit 1 
fi 

if [ "$name" = "PATOS-SERVER" ]; then 
echo  
echo "DOWNLOADING PATOS-SERVER" 
sleep 2 
git clone https://github.com/ppigmans/PATOS-SERVER
exit 1 
fi 

if [ "$name" = "exit" ]; then 
echo 
echo "Exitting" 
sleep 2 
exit 1 
fi 
