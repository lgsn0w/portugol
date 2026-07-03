/// grupo: Isac,Davi,Clarice
algoritmo "aulafinal"


inicio

   Campeao = registro
      nome: caractere
      pontos: inteiro
   fimregistro

var

   nJ: vetor[1..16] de caractere
   vi: vetor[1..16] de inteiro
   de: vetor[1..16] de inteiro
   
   
   jogadores, i, opcao: inteiro
   nomeBusca: caractere
   encontrou: logico
   
   
   melhor: Campeao
   
   pontos:inteiro
   campeao:caractere
   nome:caractere
   vitorias:inteiro
   derrotas:inteiro
   nomejogador:caractere


funcao calcular_pontos(v, d inteiro):inteiro
   retorne v * 3
fimfuncao


funcao situacao_jogador(v, d: inteiro): caractere
   se (v >= 3) entao
      retorne "Classificado"
   senao
      se (v = d) entao
         retorne "Na Zona de Risco"
      senao
         se (d >= 3) entao
            retorne "Eliminado"
         senao
            retorne "Em disputa"
         fimse
      fimse
   fimse
fimfuncao

   melhor.pontos := -1
   melhor.nome := "Nenhum"

   escreva("Digite a quantidade de jogadores cadastrados (max 16): ")
   leia(jogadores)
   
   para i de 1 ate jogadores faca
      escreva("Digite o nome do jogador ", i, ": ")
      leia(nomeJogador[i])
      vitorias[i] := 0
      derrotas[i] := 0
      
      
      se (calcular_pontos(vitorias[i], derrotas[i]) > melhor.pontos) entao
         melhor.pontos := calcular_pontos(vitorias[i], derrotas[i])
         melhor.nome := nomeJogador[i]
      fimse
   fimpara


   opcao := -1
   enquanto (opcao <> 0) faca
      escreval("")
      escreval("=== MENU CAMPEONATO ===")
      escreval("1 - Ver ranking completo")
      escreval("2 - Buscar jogador pelo nome")
      escreval("0 - Sair")
      escreva("Escolha uma opcao: ")
      leia(opcao)
      escreval("")
      
      escolha opcao
         caso 1
            escreval("--- RANKING COMPLETO ---")
            para i de 1 ate jogadores faca
               escreval("Nome: ", nomeJogador[i], " | Pontos: ", calcular_pontos(vitorias[i], derrotas[i]), " | Situacao: ", situacao_jogador(vitorias[i], derrotas[i]))
            fimpara
            escreval("------------------------")
            escreval("Lider atual: ", melhor.nome, " com ", melhor.pontos, " pontos.")
            
         caso 2
            escreva("Digite o nome do jogador que deseja buscar: ")
            leia(nomeBusca)
            encontrou := falso
            
            para i de 1 ate jogadores faca
               se (nomeJogador[i] = nomeBusca) entao
                  escreval("Jogador encontrado!")
                  escreval("Nome: ", nomeJogador[i])
                  escreval("Pontos: ", calcular_pontos(vitorias[i], derrotas[i]))
                  escreval("Situacao: ", situacao_jogador(vitorias[i], derrotas[i]))
                  encontrou := verdadeiro
               fimse
               
            fimpara
            
            se (nao encontrou) entao
               escreval("Jogador nao encontrado.")
            fimse
            
         caso 0
            escreval("Saindo do sistema")
            
         outrocaso
            escreval("Opcao invalida! Tente novamente.")
      fimescolha
   fimenquanto

fimalgoritmo