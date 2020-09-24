// Crie um programa que calcula o 13º salário de um funcionário.
// Requisitos: Entrada de dados e saída de dados na janela e no console.

// Fórmula para o cálculo
// Cálculo : (salario) / ( meses do ano) x  ( meses trabalhados) = X

var salario, mesesTrabalhados, decimoTerceiro;
const mesesDoAno = 12;

salario = prompt ("Informe o salário") ;
salario = eval (salario) ;

mesesTrabalhados = prompt ("Informe a quantidade meses trabalhados") ;
mesesTrabalhados = eval (mesesTrabalhados) ; 

decimoTerceiro = salario / mesesDoAno * mesesTrabalhados;

console.log ("::. O Décimo Terceiro salário será de " + decimoTerceiro);
