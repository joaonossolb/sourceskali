#!/bin/bash


# Desenvolvedor: João Alexandre Nossol Balbino
# github.com/joaonossolb
# https://www.facebook.com/profile.php?id=100019094381417
# 
# Adaptado por Juan Felizari Grimm
# https://facebook.com/juanfelizarigrimm

echo -e " \033[01;31m \n				Sources Kali Versão 2 \n \033[00;37m"

banner(){
			echo " Sources Kali resolve o problema de atualização no kali linux, atualiza o arquivo /etc/apt/sources.list e faz atualização no sistema"
			echo ""
			echo -e "\033[01;31m Desenvolvedor: João Alexandre Nossol Balbino \033[00;37m"
			echo -e "\033[01;31m https://github.com/joaonossolb \033[00;37m"
			echo -e "\033[01;31m https://www.facebook.com/profile.php?id=100019094381417 \033[00;37m"
			echo ""
			echo -e "\033[01;31m Adaptado por: Juan Felizari Grimm \033[00;37m"
			echo -e "\033[01;31m https://facebook.com/juanfelizarigrimm \033[00;37m"
			echo ""
			echo "$0 RUN --> Para executar o script por completo"
			echo ""
}

execution(){

			echo -e "Realizando backup de sources.list\n"
			cp /etc/apt/sources.list sources.list.bkp
			echo ""
			echo -e "Arquivo --> sources.list.bkp\n"
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

}

main(){

	if [ "$USER" == "root" ];then

		if [ -z "$1" ];then
			banner
		elif [ "$1" == "RUN" ];then
			execution
		else
			banner
		fi

	else

		echo -e "\n ## É NECESSÁRIO RODAR O PROGRAMA COMO ROOT ## \n\n"
		banner

	fi
}

main $1
