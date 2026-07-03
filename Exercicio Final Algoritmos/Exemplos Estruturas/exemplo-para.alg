algoritmo "snippet - para"

// ═══════════════════════════════════════════════
//  ESTRUTURA: para / de / ate / faca / fimpara
//
//  Repete um bloco um numero FIXO de vezes,
//  contando de um valor inicial ate um valor final.
//
//  Sintaxe:
//
//    para <variavel> de <inicio> ate <fim> faca
//       // bloco repetido
//    fimpara
//
//  A variavel de controle avanca automaticamente (+1 a cada volta).
//
//  Uso tipico — percorrer todos os elementos de um vetor:
//
//    para i de 1 ate n faca
//       escreval(nomes[i])
//    fimpara
//
//  Tambem usado para cadastrar:
//
//    para i de 1 ate n faca
//       escreva("Digite o valor ", i, ": ")
//       leia(valores[i])
//    fimpara
//
//  DICA: use 'i' como nome padrao do contador.
//  Se precisar de dois loops aninhados, use 'i' e 'j'.
// ═══════════════════════════════════════════════

var
   i: inteiro
   n: inteiro

inicio
   n <- 4

   para i de 1 ate n faca
      escreval("Volta numero: ", i)
   fimpara

fimalgoritmo
