// Crie um programa que calcula um imposto de 0.3% sob o valor de uma compra online.
// Requisitos: Entrada de dados e saída de dados na tela e no console, use uma função para calcular o imposto.

var valorCompra, valorImposto;
const imposto = 0.03;

valorCompra = prompt ("Informe o valor do produto") ;
valorCompra = eval (valorCompra) ;

valorImposto = valorCompra * imposto;

console.log ("::. O valor do imposto a ser cobrado é de  " + valorImposto);