algoritmo "snippet - se"

// ═══════════════════════════════════════════════
//  ESTRUTURA: se / senao / fimse
//
//  Sintaxe:
//
//    se <condicao> entao
//       // executado quando a condicao e verdadeira
//    senao
//       // executado quando a condicao e falsa (opcional)
//    fimse
//
//  Operadores de comparacao:
//    =   igual
//    <>  diferente
//    >   maior       >=  maior ou igual
//    <   menor       <=  menor ou igual
//
//  Operadores logicos:
//    e    (ambas as condicoes verdadeiras)
//    ou   (pelo menos uma verdadeira)
//    nao  (inverte a condicao)
//
//  Exemplo:
//
//    se nota >= 7 entao
//       escreval("Aprovado")
//    senao
//       escreval("Reprovado")
//    fimse
//
//  Se encadeado (varios casos):
//
//    se condicao1 entao
//       ...
//    senao
//       se condicao2 entao
//          ...
//       senao
//          ...
//       fimse
//    fimse
// ═══════════════════════════════════════════════

var
   nota: inteiro

inicio
   leia(nota)

   se nota >= 7 entao
      escreval("Aprovado")
   senao
      escreval("Reprovado")
   fimse

fimalgoritmo
