algoritmo "desafio final"

tipo
    jogo=registro
        nome:caractere
        pts:inteiro
    fimregistro

var
    opcao,i,n,maiorpontos:inteiro
    nomes:vetor [1..16] de caractere
    vitorias:vetor[1..16] de inteiro
    derrotas:vetor[1..16] de inteiro
    nomeBusca:caractere
    nomeTemp:caractere
    encontrado:logico

    funcao pontos (vitorias,derrota:inteiro):inteiro
        inicio
        retorne vitorias*3
    fimfuncao
    funcao situacao (vitorias,derrotas:inteiro):caractere
        inicio
        se vitorias >= 3 entao
            escreval("Classificado!")
        senao
            se vitorias = derrotas entao
                escreval("Na zona de risco!")
            senao
                se vitorias <= 3 entao
                    escreval("Eliminado!")
                senao
                    escreval("Em disputa!")
                fimse
            fimse
        fimse
    fimfuncao


inicio

    escreval("quantos jogadores irão jogar?")
    leia("n")

    para 1 de i ate n faca
        escreval("Digite quantos jogadores irão participar: ")
        leia(nomes[i])
        vitorias <- 0
        derrotas <- 0
    fimpara

    opcao <- -1
    enquanto (opcao <> 0) faca
        escreval("=======MENU PRINCIPAL=======")
        ESCREVAL("")
        escreval("1-Ranking dos jogadores")
        escreval("2-buscar jogador pelo nome")
        escreval("0-sair")
        leia(opcao)
    fimenquanto




fimalgoritmo
