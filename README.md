# Calculadora-em-shellScript
Calculadora básica feita em shell script
Separei o codigo em duas partes, a parte onde contem operações (Somar,Subtrair,Dividir e Multiplicar),  todo a opração é feita no pelo proprio shell, pórem o bash tem uma grande limitação de trabalhar apenas com números inteiros... na segunda parte do codigo onde tem calculo de IMC e potenciação, para trabar com números de ponto flutuante do IMC, "Importei" a calculadora bc, feita para tapar o buraco que o bash deixa, quando falamos em números de ponto flutuante, é possivel observar a utilização da calculadora bc nas opções "5" e "6" dentro do codigo.

#Atualizações Futuras:
Otimizações e organização do código; 
adcionar mais operações matematicas;
adcionar (se possivel) interface gráfica;
adionar condicionais dentro da estrutura do IMC (EX: se < 17 Muito Magro, se > 34 Obeso);
