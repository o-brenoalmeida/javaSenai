// Crie um programa que calcula o IMC de alguém.
// var salario, mesesTrabalhados, decimoTerceiro;

var peso, altura, imc;

peso = prompt ("Informe o peso (Ex: 76.4)") ;
peso = eval (peso) ;

altura = prompt ("Informe a altura (Ex: 1.73)") ;
altura = eval (altura) ; 

imc = peso / (altura ^ 2);

console.log ("::. O Índice de Massa Corporal (IMC) será de " + imc);