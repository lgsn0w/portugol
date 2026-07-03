algoritmo "snippet - funcao"

// ═══════════════════════════════════════════════
//  ESTRUTURA: funcao
//
//  Uma funcao recebe parametros, faz um calculo
//  e RETORNA um resultado. Ela e declarada ANTES
//  do bloco "inicio" principal.
//
//  Declaracao:
//
//    funcao <nome>(<param>: <tipo>): <tipo-retorno>
//    inicio
//       retorne <valor>
//    fimfuncao
//
//  Exemplo com um parametro:
//
//    funcao dobro(n: inteiro): inteiro
//    inicio
//       retorne n * 2
//    fimfuncao
//
//  Exemplo com dois parametros:
//
//    funcao soma(a, b: inteiro): inteiro
//    inicio
//       retorne a + b
//    fimfuncao
//
//  Chamada (uso) da funcao:
//
//    resultado <- dobro(5)          // guarda o retorno
//    escreval(soma(3, 4))           // usa direto no escreval
//    se dobro(x) > 10 entao ...    // usa em condicao
//
//  DICA: a funcao nao imprime nada — so retorna.
//  Quem chama decide o que fazer com o resultado.
// ═══════════════════════════════════════════════

var
   resultado: inteiro

funcao dobro(n: inteiro): inteiro
inicio
   retorne n * 2
fimfuncao

funcao classificacao(nota: inteiro): caractere
inicio
   se nota >= 7 entao
      retorne "Aprovado"
   senao
      retorne "Reprovado"
   fimse
fimfuncao

inicio
   resultado <- dobro(6)
   escreval("Dobro de 6: ", resultado)
   escreval("Nota 8: ", classificacao(8))
   escreval("Nota 4: ", classificacao(4))

fimalgoritmo
