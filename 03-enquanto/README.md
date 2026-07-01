# Estrutura de Repetição `enquanto`

O `enquanto` repete um bloco de código enquanto uma condição for verdadeira. A condição é testada **antes** de cada execução — se já começar falsa, o bloco não roda nem uma vez.

```portugol
enquanto (condicao) faca
  // executa enquanto condicao for verdadeiro
fimenquanto
```

A diferença principal em relação ao `para` é que aqui você não precisa saber com antecedência quantas vezes o loop vai rodar. O loop continua até a condição mudar — e cabe ao código dentro do bloco fazer isso acontecer em algum momento, senão o loop nunca termina.

---

## Quando usar

Use `enquanto` quando o número de repetições depende de algo que só é descoberto durante a execução:

- Repetir até o usuário digitar um valor válido
- Processar entradas até receber um valor sentinela (ex: -1 para sair)
- Aguardar que uma condição seja satisfeita

Para contagens fixas e conhecidas antecipadamente, o `para` costuma ser mais direto.

---

## Exemplo — validação de entrada

```portugol
escreva("Digite um número positivo: ")
leia(numero)
enquanto (numero <= 0) faca
  escreva("Inválido! Digite novamente: ")
  leia(numero)
fimenquanto
escreval("Número aceito: ", numero)
```

O loop continua pedindo o número até o usuário digitar algo maior que zero. Não tem como saber de antemão quantas tentativas serão necessárias.

---

## Exemplo — acumulador com sentinela

```portugol
soma <- 0
escreva("Digite um valor (0 para sair): ")
leia(valor)
enquanto (valor <> 0) faca
  soma <- soma + valor
  escreva("Digite um valor (0 para sair): ")
  leia(valor)
fimenquanto
escreval("Soma total: ", soma)
```

Aqui o loop para quando o usuário digita 0. O número de iterações é completamente aberto.

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `aula_enquanto.pptx` | Slides da aula |
| `aula_enquanto.pdf` | Slides em PDF |
| `exercicios_para_enquanto.pdf` | Lista de exercícios |
