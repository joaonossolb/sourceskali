#! /bin/bash
#Desenvolvedor: João Alexandre Nossol Balbino
#github.com/joaonossolb
echo -e " \033[01;31m
				Sources Kali                                    
\033[00;37m"

if [ "$1" != "" ]
then
echo "Sources Kali resolve o problema de atualização no kali linux, atualiza o arquivo /etc/apt/sources.list e faz atualização no sistema"
echo ""
echo -e "\033[01;31m Desenvolvedor: João Alexandre Nossol Balbino \033[00;37m"
echo -e "\033[01;31m https://github.com/joaonossolb \033[00;37m"
echo ""
echo "$0 RUN --> Para executar o script por completo"
echo ""
fi

if [ "$1" == "" ];then
echo "Sources List Kali resolve o problema de atualização no kali linux, atualiza o arquivo /etc/apt/sources.list e faz atualização no sistema"
echo ""
echo -e "\033[01;31m Desenvolvedor: João Alexandre Nossol Balbino \033[00;37m"
echo -e "\033[01;31m https://github.com/joaonossolb \033[00;37m"
echo ""
echo "$0 RUN --> Para executar o script por completo"
echo ""
fi

if [ "$1" == "RUN" ]
then
echo "Realizando backup de sources.list"
echo ""
cp /etc/apt/sources.list .
echo ""
echo "Arquivo --> sources.list"
echo ""
echo "Modificando arquivo /etc/apt/sources.list"
wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add
echo ""
echo "deb https://mirrors.ocf.berkeley.edu/kali kali-rolling main contrib non-free" > /etc/apt/sources.list
echo "# For source package access, uncomment the following line" >> /etc/apt/sources.list
echo "Atualizando o Sistema"
echo ""
apt-get update -y
apt-get upgrade -y
echo ""
echo -e " \033[01;31m Finalizado :) \033[00;37m"
echo ""
fi
