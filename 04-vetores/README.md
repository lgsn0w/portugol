# Vetores

Um vetor é uma variável que guarda vários valores do mesmo tipo, acessados por um índice numérico. Em vez de criar `nota1`, `nota2`, `nota3`... você cria um vetor `notas` e acessa cada posição pelo número.

```portugol
var
  notas: vetor[1..5] de real
```

Isso cria um vetor com 5 posições: `notas[1]`, `notas[2]`, ..., `notas[5]`.

---

## Declaração e acesso

```portugol
var
  numeros: vetor[1..10] de inteiro
  i: inteiro

inicio
  // Preencher o vetor
  para i de 1 ate 10 faca
    leia(numeros[i])
  fimpara

  // Ler o vetor
  para i de 1 ate 10 faca
    escreval(numeros[i])
  fimpara
```

O índice pode ser qualquer expressão inteira — geralmente uma variável de controle do `para`.

---

## Por que usar vetores

Sem vetores, para guardar 50 notas você precisaria de 50 variáveis diferentes e não daria para percorrê-las com um loop. Com um vetor, o tamanho vira um número e o índice vira uma variável — o `para` cuida do resto.

---

## Operações comuns

**Soma e média de todos os elementos:**
```portugol
soma <- 0
para i de 1 ate n faca
  soma <- soma + valores[i]
fimpara
media <- soma / n
```

**Encontrar o maior valor:**
```portugol
maior <- valores[1]
para i de 2 ate n faca
  se (valores[i] > maior) entao
    maior <- valores[i]
  fimse
fimpara
```

**Contar quantos elementos satisfazem uma condição:**
```portugol
contador <- 0
para i de 1 ate n faca
  se (valores[i] >= 7) entao
    contador <- contador + 1
  fimse
fimpara
```

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `vetores.pptx` | Slides da aula |
| `exercicios_vetores-1.pdf` | Lista de exercícios |
