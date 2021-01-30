#!/bin/bash
#Autor: Emerson SAntos <emersonrox8@gmail.com>
#Versão: 0.1
#Descrição: Calculadora 

reapt(){
	echo "Voltar para a calculadora ? S/N"
	read tkp
	clear
}

ent(){
	read priVar
	read segVar
}

loop(){
	echo "S"
}
echo "Deseja entrar na Calculadora, S/N?"
read tkp
$tkp=loop
clear

while [ $tkp == "S" ];
do
echo "****************************"
echo "Olá $USER"
data=$(date +"%d/%m/%y | %H:%M | %a");
echo "$data"
echo "---------------------------"
echo "      |CALCULADORA|"        
echo "---------------------------"
echo "1 = Para somar"
echo "2 = Para subtrair"
echo "3 = Para multiplicar"
echo "4 = Para dividir"
echo "5 = Calculo de Potenciação"
echo "6 = Calculo de IMC"
echo "-------------------------"
echo "APERTE CTRL + C PARA SAIR"
echo "-------------------------"
echo "Selecione a opção de 1 a 6"

read opcao;
sleep 1
clear

if [ $opcao == "1" ];
then  	
	echo "Digite o seu calculo de soma"
	ent
	resuSo=$[ $priVar + $segVar ];
	echo "Resultado = $resuSo"
	reapt


elif [ $opcao == "2" ];
then
	echo "Digite o seu calculo de subtração"
	ent
	resuSu=$[ $priVar - $segVar ];
	echo "Resultado = $resuSu"
	reapt

elif [ $opcao == "3" ];
then
	echo "Digite o seu calculo de multiplicação"
	ent
	resuMu=$[ $priVar * $segVar ];
	echo "Resultado = $resuMu"
	reapt

elif [ $opcao == "4" ];
then	
	echo "Digite o seu calculo divisão"
	ent
	resuDi=$[ $priVar / $segVar ];
	echo "Resultado = $resuDi"
	reapt

elif [ $opcao == "5" ];
then	
	echo "CLCULO DE POTÊNCIAÇÃO"
	echo "----------------------"
	echo "Digite o número"
	read potencia_numero;
	echo "digite a potência"
	read potencia_top;

	resuPo=`echo "scale=0;  $potencia_numero ^ $potencia_top" | bc`
	echo "Resultado = $resuPo"
	reapt

elif [ $opcao == "6" ];
then
	echo "CALCULO DE IMC"
	echo "---------------"
	echo "Infome seu peso atual"
	read peso;
	echo "Infome sua altura atual"
	read altura;

	resulImc=`echo "scale=3; $peso / ($altura ^ 2)" | bc`;
	echo "O seu IMC é: $resulImc"
	reapt


#RESOLVER! Aqui tem que ir condicionais relacionado a opção 6
#	if [ $resulImc -le 40 ];
#	then
#		echo "OK"
#	fi

fi
done
