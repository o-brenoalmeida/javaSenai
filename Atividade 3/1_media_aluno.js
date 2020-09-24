// Crie um programa em javascrip que calcula a média de um estudante a partir da nota de 3 provas.
// Requisitos: Entrada de dados e saída de dados na janela e no console.


var media, n1, n2, n3 ;

n1= prompt ("Informe o valor da nota 1") ;
n1= eval (n1) ;

n2= prompt ("Informe o valor da nota 2") ;
n2= eval (n2) ; 

n3= prompt ("Informe o valor da nota 3") ; 
n3= eval (n3) ;

media = (n1 + n2 + n3)/3 ; 

if ( media >= 6 ) 
{
    console.log ("::. Aluno está aprovado .:: A média foi: " + media;

} 
else 
{ 
    if ( media <= 5 ) 
    {
       console.log("::. Aluno está reprovado .:: A média foi: " + media);
    }
    else 
    {
       console.log ("::. Aluno está em recuperação .:: A média foi: " + media);
    }
}