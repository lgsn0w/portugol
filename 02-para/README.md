# Estrutura de Repetição `para`

O `para` é usado quando você sabe exatamente quantas vezes o bloco precisa repetir antes de o loop começar. Ele tem um contador embutido que sobe automaticamente a cada volta.

```portugol
para i de 1 ate 10 faca
  // executa 10 vezes
fimpara
```

O contador começa no valor de início, incrementa 1 a cada iteração e para quando ultrapassa o valor final. Não é necessário (nem possível) incrementar manualmente o `i` dentro do bloco.

Quando o número de repetições depende de uma condição que só se resolve durante a execução — tipo "repetir até o usuário digitar 0" — o `enquanto` é mais adequado.

---

## Algoritmos

### `algoritmo SomaEMedia.alg`

Lê `n` notas digitadas pelo usuário e calcula a soma e a média da turma.

O usuário informa quantas notas vai digitar antes do loop começar, então o `para` encaixa perfeitamente: o número de repetições é conhecido.

```portugol
escreval("Quantas notas voce quer digitar?")
leia(n)
soma <- 0
para i de 1 ate n faca
  escreval("Digite a nota ", i, ":")
  leia(nota)
  soma <- soma + nota
fimpara
media <- soma / n
escreval("Soma das notas: ", soma)
escreval("Media da turma: ", media)
```

**Exemplo (n = 3, notas 7.5 / 8.0 / 6.0):**
```
Soma das notas: 21.5
Media da turma: 7.17
```

---

### `algoritmo Tabuada.alg`

Gera a tabuada de um número inteiro de 1 a 10. O intervalo é sempre fixo, então o `para` vai de 1 até 10 sem precisar de nenhuma condição extra.

```portugol
leia(numero)
para i de 1 ate 10 faca
  resultado <- numero * i
  escreval(numero, " x ", i, " = ", resultado)
fimpara
```

**Exemplo (numero = 7):**
```
7 x 1 = 7
7 x 2 = 14
...
7 x 10 = 70
```

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `Estrutura Repeticao Para.pdf` | Slides da aula |
| `algoritmo SomaEMedia.alg` | Calcula soma e média de N notas |
| `algoritmo Tabuada.alg` | Gera a tabuada de um número |

## Como executar os `.alg`

1. Baixe e instale o [VisuAlg](https://visualg3.com.br/)
2. Abra o arquivo `.alg` no VisuAlg
3. Pressione **F9** para executar
