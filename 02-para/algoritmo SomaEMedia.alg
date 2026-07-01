algoritmo "SomaEMedia"

var
   n, i: inteiro
   nota, soma, media: real

inicio

   // Primeiro perguntamos quantas notas serão digitadas
   escreval("Quantas notas voce quer digitar?")
   leia(n)

   // A soma precisa começar em zero
   // porque ainda nao somamos nenhuma nota
   soma <- 0

   // O para vai repetir de 1 ate n
   // Se n for 5, ele repete 5 vezes
   para i de 1 ate n faca

      // Mostra qual nota esta sendo pedida
      escreval("Digite a nota ", i, ":")

      // Le a nota do aluno atual
      leia(nota)

      // Acumula a nota dentro da variavel soma
      // Exemplo: soma antiga + nova nota
      soma <- soma + nota

   fimpara

   // Depois que o loop termina, calculamos a media
   media <- soma / n

   // Mostramos o resultado final
   escreval("Soma das notas: ", soma)
   escreval("Media da turma: ", media)

fimalgoritmo