algoritmo "Tabuada"

var
   numero, i, resultado: inteiro

inicio

   // Primeiro lemos o numero que tera a tabuada calculada
   escreval("Digite um numero inteiro:")
   leia(numero)

   // O para vai de 1 ate 10
   // porque a tabuada normalmente vai de x1 ate x10
   para i de 1 ate 10 faca

      // Calcula o resultado da multiplicacao atual
      resultado <- numero * i

      // Mostra a linha da tabuada
      // Exemplo: 7 x 3 = 21
      escreval(numero, " x ", i, " = ", resultado)

   fimpara

fimalgoritmo