algoritmo "Campeonato_Games"

//grupo: Davi, Isac, Clarice

tipo
   Campeao = registro
      nome : caractere
      pontos : inteiro
   fimregistro

var
   nomes : vetor[1..16] de caractere
   vitorias : vetor[1..16] de inteiro
   derrotas : vetor[1..16] de inteiro

   melhor : Campeao

   n, i : inteiro
   opcao : inteiro
   busca : caractere
   vencedor : caractere
   perdedor : caractere
   pontos : inteiro
   achou : logico

funcao calcularPontos(v : inteiro): inteiro
inicio
   retorne v * 3
fimfuncao

funcao verificarSituacao(v d : inteiro): caractere
inicio
   se v >= 3 entao
      retorne "Classificado"
   senao
      se v = d entao
         retorne "Na Zona de Risco"
      senao
         se d >= 3 entao
            retorne "Eliminado"
         senao
            retorne "Em disputa"
         fimse
      fimse
   fimse
fimfuncao

inicio

   opcao <- -1

   escreval("===== CAMPEONATO =====")
   escreva("Quantos jogadores deseja cadastrar? (max 16): ")
   leia(n)

   enquanto n < 1 ou n > 16 faca
      escreval("Numero invalido.")
      escreva("Digite novamente: ")
      leia(n)
   fimenquanto

   para i de 1 ate n faca
      escreva("Nome do jogador ", i, ": ")
      leia(nomes[i])

      vitorias[i] <- 0
      derrotas[i] <- 0
   fimpara

   melhor.nome <- ""
   melhor.pontos <- -1

   enquanto opcao <> 0 faca

      escreval()
      escreval("===== MENU =====")
      escreval("1 - Ver ranking")
      escreval("2 - Buscar jogador")
      escreval("3 - Registrar partida")
      escreval("0 - Sair")
      escreva("Opcao: ")
      leia(opcao)

      se opcao = 1 entao

         melhor.pontos <- -1

         para i de 1 ate n faca
            pontos <- calcularPontos(vitorias[i])

            escreval("--------------------")
            escreval("Nome: ", nomes[i])
            escreval("Pontos: ", pontos)
            escreval("Situacao: ", verificarSituacao(vitorias[i], derrotas[i]))

            se pontos > melhor.pontos entao
               melhor.nome <- nomes[i]
               melhor.pontos <- pontos
            fimse

         fimpara

         escreval("--------------------")
         escreval("Lider: ", melhor.nome)
         escreval("Maior pontuacao: ", melhor.pontos)

      fimse

      se opcao = 2 entao

         escreva("Digite o nome para buscar: ")
         leia(busca)

         achou <- falso

         para i de 1 ate n faca
            se nomes[i] = busca entao
               escreval("Jogador encontrado")
               escreval("Nome: ", nomes[i])
               escreval("Pontos: ", calcularPontos(vitorias[i]))
               escreval("Situacao: ", verificarSituacao(vitorias[i], derrotas[i]))
               achou <- verdadeiro
            fimse
         fimpara

         se achou = falso entao
            escreval("Jogador nao encontrado")
         fimse

      fimse

      se opcao = 3 entao

         escreva("Nome do vencedor: ")
         leia(vencedor)

         escreva("Nome do perdedor: ")
         leia(perdedor)

         para i de 1 ate n faca

            se nomes[i] = vencedor entao
               vitorias[i] <- vitorias[i] + 1
            fimse

            se nomes[i] = perdedor entao
               derrotas[i] <- derrotas[i] + 1
            fimse

         fimpara

         escreval("Resultado registrado!")

      fimse

   fimenquanto

   escreval("Programa encerrado.")

fimalgoritmo