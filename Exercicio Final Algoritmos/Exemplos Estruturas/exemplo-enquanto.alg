algoritmo "snippet - enquanto"

// ═══════════════════════════════════════════════
//  ESTRUTURA: enquanto / faca / fimenquanto
//
//  Repete um bloco ENQUANTO a condicao for verdadeira.
//  A condicao e verificada ANTES de cada repetição.
//  Se a condicao comecar falsa, o bloco nunca executa.
//
//  Sintaxe:
//
//    enquanto <condicao> faca
//       // bloco repetido
//    fimenquanto
//
//  Uso tipico — menu que repete ate o usuario sair:
//
//    opcao <- -1                  // valor inicial diferente de 0 para entrar no loop
//    enquanto opcao <> 0 faca
//       escreval("1 - Opcao A")
//       escreval("0 - Sair")
//       leia(opcao)
//       ...
//    fimenquanto
//
//  ATENCAO: sempre garanta que a variavel da condicao
//  muda dentro do loop, senao ele nunca termina.
// ═══════════════════════════════════════════════

var
   opcao: inteiro

inicio
   opcao <- -1

   enquanto opcao <> 0 faca
      escreval("1 - Fazer algo")
      escreval("0 - Sair")
      escreva("Opcao: ")
      leia(opcao)
   fimenquanto

   escreval("Programa encerrado.")

fimalgoritmo
