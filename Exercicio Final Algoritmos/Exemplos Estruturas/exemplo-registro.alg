algoritmo "snippet - registro"

// ═══════════════════════════════════════════════
//  ESTRUTURA: registro
//
//  Um registro agrupa campos de tipos diferentes
//  em uma unica variavel. Declarado na secao "tipo",
//  antes de "var".
//
//  Declaracao do tipo:
//
//    tipo
//       <NomeDoTipo> = registro
//          <campo1>: <tipo>
//          <campo2>: <tipo>
//       fimregistro
//
//  Declaracao da variavel (em "var"):
//
//    <nomeVar>: <NomeDoTipo>
//
//  Acesso aos campos — use ponto ( . ):
//
//    <nomeVar>.<campo> <- <valor>   // atribuir
//    escreval(<nomeVar>.<campo>)    // ler/exibir
//
//  ATENCAO VisuAlg Web — limitacoes conhecidas:
//    - leia(<var>.<campo>) pode falhar
//      SOLUCAO: leia(aux) e depois <var>.<campo> <- aux
//    - vetor[i].<campo> <- valor tambem falha
//      SOLUCAO: use vetores paralelos para listas,
//               registro apenas para variavel avulsa (ex: melhor)
// ═══════════════════════════════════════════════

tipo
   Pessoa = registro
      nome  : caractere
      idade : inteiro
   fimregistro

var
   p  : Pessoa
   aux: caractere

inicio
   // Atribuicao direta (funciona)
   p.nome  <- "Ana"
   p.idade <- 20

   // Leitura via auxiliar (workaround seguro)
   escreva("Digite um nome: ")
   leia(aux)
   p.nome <- aux

   escreval("Nome: ",  p.nome)
   escreval("Idade: ", p.idade)

fimalgoritmo
