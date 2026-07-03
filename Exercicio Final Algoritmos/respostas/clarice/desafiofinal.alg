////integrantes Clarice, Davi e Isaac

algoritmo "Desafio final"

tipo
   Campeao = registro
      nome: caractere
      pontos: inteiro
   fimregistro

funcao calcularPontos(vitorias: inteiro, derrotas: inteiro): inteiro
inicio
   retorne vitorias * 3
fimfuncao

funcao situacao(vitorias: inteiro, derrotas: inteiro): caractere
inicio

   se vitorias >= 3 entao
      retorne "Classificado"

   senao

      se vitorias = derrotas entao
         retorne "Na Zona de Risco"

      senao

         se derrotas >= 3 entao
            retorne "Eliminado"

         senao
            retorne "Em disputa"
         fimse

      fimse

   fimse

fimfuncao

var

   nomes: vetor[1..16] de caractere
   vitorias: vetor[1..16] de inteiro
   derrotas: vetor[1..16] de inteiro

   melhor: Campeao

   quantidade: inteiro
   i: inteiro
   opcao: inteiro
   pontos: inteiro

   busca: caractere

   encontrou: logico

inicio

   escreval("==============================")
   escreval(" CAMPEONATO DE GAMES ")
   escreval("==============================")
   escreval()

   escre("Quantos jogadores deseja cadastrar (maximo 16): ")
   leia(quantidade)

   enquanto (quantidade < 1) ou (quantidade > 16) faca
      escre("Quantidade invalida. Digite novamente: ")
      leia(quantidade)
   fimenquanto

   melhor.nome <- ""
   melhor.pontos <- -1

   para i de 1 ate quantidade faca

      escreval()
      escre("Nome do jogador ",i,": ")
      leia(nomes[i])

      vitorias[i] <- 0
      derrotas[i] <- 0

      pontos <- calcularPontos(vitorias[i],derrotas[i])

      se pontos > melhor.pontos entao
         melhor.nome <- nomes[i]
         melhor.pontos <- pontos
      fimse

   fimpara

   opcao <- -1

   enquanto opcao <> 0 faca

      escreval()
      escreval("========== MENU ==========")
      escreval("1 - Ver ranking completo")
      escreval("2 - Buscar jogador")
      escreval("0 - Sair")
      escre("Opcao: ")
      leia(opcao)

      escolha opcao

         caso 1

            limpatela

            escreval("======= RANKING =======")

            melhor.pontos <- -1

            para i de 1 ate quantidade faca

               pontos <- calcularPontos(vitorias[i],derrotas[i])

               escreval("------------------------------")
               escreval("Nome: ",nomes[i])
               escreval("Vitorias: ",vitorias[i])
               escreval("Derrotas: ",derrotas[i])
               escreval("Pontos: ",pontos)
               escreval("Situacao: ",situacao(vitorias[i],derrotas[i]))

               se pontos > melhor.pontos entao
                  melhor.nome <- nomes[i]
                  melhor.pontos <- pontos
               fimse

            fimpara

            escreval("------------------------------")
            escreval("LIDER DO CAMPEONATO")
            escreval("Nome: ",melhor.nome)
            escreval("Pontos: ",melhor.pontos)
            escreval("------------------------------")

         caso 2

            escreval()
            escre("Digite o nome do jogador: ")
            leia(busca)

            encontrou <- falso

            para i de 1 ate quantidade faca

               se nomes[i] = busca entao

                  pontos <- calcularPontos(vitorias[i],derrotas[i])

                  escreval()
                  escreval("Jogador encontrado!")
                  escreval("Nome: ",nomes[i])
                  escreval("Vitorias: ",vitorias[i])
                  escreval("Derrotas: ",derrotas[i])
                  escreval("Pontos: ",pontos)
                  escreval("Situacao: ",situacao(vitorias[i],derrotas[i]))

                  encontrou <- verdadeiro

               fimse

            fimpara

            se encontrou = falso entao
               escreval("Jogador nao encontrado.")
            fimse

         caso 0

            escreval("Sistema encerrado.")

         outrocaso

            escreval("Opcao invalida.")

      fimescolha

   fimenquanto

fimalgoritmo