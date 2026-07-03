algoritmo "snippet - vetor"

// ═══════════════════════════════════════════════
//  ESTRUTURA: vetor
//
//  Um vetor guarda varios valores do mesmo tipo
//  em uma unica variavel, acessados por indice.
//
//  Declaracao:
//
//    <nome>: vetor[1..<tamanho>] de <tipo>
//
//  Exemplos de declaracao:
//
//    nomes   : vetor[1..16] de caractere
//    pontos  : vetor[1..16] de inteiro
//    aprovado: vetor[1..16] de logico
//
//  Acesso — leitura e escrita pelo indice:
//
//    nomes[1]  <- "Ana"       // atribui na posicao 1
//    escreval(nomes[1])       // exibe a posicao 1
//    leia(nomes[i])           // le da entrada para a posicao i
//
//  Percurso com para (padrao mais comum):
//
//    para i de 1 ate n faca
//       leia(nomes[i])        // cadastra
//    fimpara
//
//    para i de 1 ate n faca
//       escreval(nomes[i])    // exibe todos
//    fimpara
//
//  ATENCAO VisuAlg Web:
//    leia() e <- aceitam vetor[i] normalmente.
//    O problema ocorre apenas com vetor[i].campo (registro dentro de vetor).
// ═══════════════════════════════════════════════

var
   nomes : vetor[1..5] de caractere
   valores: vetor[1..5] de inteiro
   i     : inteiro

inicio
   para i de 1 ate 5 faca
      escreva("Nome ", i, ": ")
      leia(nomes[i])
      valores[i] <- i * 10
   fimpara

   para i de 1 ate 5 faca
      escreval(nomes[i], " -> ", valores[i])
   fimpara

fimalgoritmo
