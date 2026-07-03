algoritmo "Variaveis uteis — referencia"

// ═══════════════════════════════════════════════
//  ARQUIVO DE REFERENCIA — nao e para rodar.
//  Copie as declaracoes que precisar no seu programa.
// ═══════════════════════════════════════════════

// ── Tipo personalizado ─────────────────────────
//
//  tipo
//     Campeao = registro
//        nome  : caractere   // nome do lider atual
//        pontos: inteiro     // pontuacao do lider atual
//     fimregistro

// ── Variaveis — secao var ──────────────────────

//  CONTROLE GERAL
//  n       : inteiro
//    → quantidade de jogadores cadastrados (digitado pelo usuario)
//    → use como limite nos loops: para i de 1 ate n faca

//  i       : inteiro
//    → indice de loop (contador geral)
//    → padrao de mercado; nao precisa de nome descritivo

//  opcao   : inteiro
//    → guarda a opcao escolhida no menu (1, 2, 0...)
//    → inicialize com -1 antes do enquanto para garantir a entrada

//  VETORES DE JOGADORES (paralelos — um indice por jogador)
//  nomes   : vetor[1..16] de caractere
//    → nome de cada jogador; posicao 1 = jogador 1, etc.

//  vitorias: vetor[1..16] de inteiro
//    → numero de vitorias de cada jogador; iniciar em 0

//  derrotas: vetor[1..16] de inteiro
//    → numero de derrotas de cada jogador; iniciar em 0

//  LIDER
//  melhor      : Campeao
//    → registro com o nome e pontos de quem esta na frente
//    → atualizado sempre que alguem superar maiorPontos

//  maiorPontos : inteiro
//    → maior pontuacao encontrada ate agora na comparacao
//    → inicialize com -1 antes do loop de busca pelo lider

//  BUSCA POR NOME
//  nomeBusca : caractere
//    → nome digitado pelo usuario para encontrar um jogador

//  encontrado: logico
//    → comeca em falso; vira verdadeiro ao achar o jogador
//    → use apos o loop para exibir "nao encontrado" se ainda falso

//  AUXILIAR DE ENTRADA (workaround VisuAlg Web)
//  nomeTemp  : caractere
//    → variavel intermediaria para leia() quando o destino direto falha
//    → ex: leia(nomeTemp)  depois  nomes[i] <- nomeTemp

// ═══════════════════════════════════════════════

var
   // copie daqui para o seu var:
   n           : inteiro
   i           : inteiro
   opcao       : inteiro
   nomes       : vetor[1..16] de caractere
   vitorias    : vetor[1..16] de inteiro
   derrotas    : vetor[1..16] de inteiro
   maiorPontos : inteiro
   nomeBusca   : caractere
   nomeTemp    : caractere
   encontrado  : logico

inicio
   // (arquivo de referencia)
fimalgoritmo
