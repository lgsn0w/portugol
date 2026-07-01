# Funções e Procedimentos

## O que é uma função

Uma função é um bloco de código com nome que pode receber dados (parâmetros) e sempre devolve um resultado com `retorne`. A ideia é encapsular uma lógica que você vai precisar repetir — em vez de escrever o mesmo cálculo três vezes no programa, você escreve uma vez dentro da função e chama ela quando precisar.

```portugol
função nome(param: tipo): tipo_do_retorno
  retorne valor
fimfunção
```

## O que é um procedimento

O procedimento funciona igual à função, mas não devolve nada. Ele executa uma ação e pronto. Serve quando o objetivo é fazer algo (mostrar uma mensagem, atualizar uma variável) sem precisar de um valor de volta.

```portugol
procedimento nome(param: tipo)
  // faz alguma coisa
fimprocedimento
```

## Passagem por valor e por referência

Quando você passa um parâmetro normalmente, o que entra é uma **cópia** do valor original. A função pode fazer o que quiser com essa cópia — a variável lá fora não muda.

```portugol
função dobrar(numero: inteiro): inteiro
  numero <- numero * 2   // só muda a cópia
  retorne numero
fimfunção
```

Colocando `var` antes do parâmetro, a função passa a trabalhar com o **original**. Qualquer alteração dentro do procedimento reflete diretamente na variável de quem chamou. Isso é passagem por referência.

```portugol
procedimento dobrar_direto(var numero: inteiro)
  numero <- numero * 2   // muda o original
fimprocedimento
```

O `var` é essencial em casos como o saldo de uma conta bancária: você quer que o procedimento `sacar` realmente reduza o saldo, não trabalhe com uma cópia descartável.

---

## Exercícios

### Exercício 1 — Maioridade

Crie a função `pode_dirigir` que recebe a idade e devolve `verdadeiro` se a pessoa tem 18 anos ou mais, `falso` caso contrário. No programa principal, leia a idade e mostre se pode ou não dirigir.

```portugol
função pode_dirigir(idade: inteiro): logico
  se (idade >= 18) entao
    retorne verdadeiro
  senao
    retorne falso
  fimse
fimfunção

leia(idade)
se (pode_dirigir(idade)) entao
  escreval("Pode dirigir.")
senao
  escreval("Ainda não pode dirigir.")
fimse
```

---

### Exercício 2 — Troco da compra

Crie a função `calcula_troco` que recebe o preço da compra e o valor pago pelo cliente, e devolve o troco. Pode assumir que o valor pago é sempre suficiente.

```portugol
função calcula_troco(preco, pago: real): real
  retorne pago - preco
fimfunção

leia(preco, pago)
escreval("Troco: ", calcula_troco(preco, pago))
```

---

### Exercício 3 — Senha válida

Crie a função `senha_valida` que recebe uma senha (texto) e devolve `verdadeiro` se ela tiver 6 caracteres ou mais. No programa principal, peça a senha repetidamente enquanto ela for inválida.

```portugol
função senha_valida(senha: caractere): logico
  retorne comprimento(senha) >= 6
fimfunção

escreva("Digite uma senha (mín. 6 caracteres): ")
leia(senha)
enquanto (nao senha_valida(senha)) faca
  escreva("Muito curta! Digite novamente: ")
  leia(senha)
fimenquanto
escreval("Senha aceita!")
```

---

### Exercício 4 — Saque no caixa (por referência)

Crie o procedimento `sacar` que recebe `var saldo: real` e um valor a sacar. Se o valor for maior que o saldo, mostra "Saldo insuficiente" sem mexer no saldo. Caso contrário, subtrai. O programa começa com R$ 300.

```portugol
procedimento sacar(var saldo: real, valor: real)
  se (valor > saldo) entao
    escreval("Saldo insuficiente.")
  senao
    saldo <- saldo - valor
  fimse
fimprocedimento

saldo <- 300
escreva("Valor do saque: ")
leia(valor)
sacar(saldo, valor)
escreval("Saldo após operação: ", saldo)
```

---

### Exercício 5 — Caixa da loja (função + procedimento)

Combina os dois conceitos: `calcula_total` devolve o preço total por valor, e `aplica_desconto` altera o total direto por referência. Se o cliente tiver cartão fidelidade, aplica 10% de desconto.

```portugol
função calcula_total(preco, quantidade: real): real
  retorne preco * quantidade
fimfunção

procedimento aplica_desconto(var total: real, percentual: real)
  total <- total - (total * percentual / 100)
fimprocedimento

leia(preco, quantidade)
total <- calcula_total(preco, quantidade)
escreva("Tem cartão fidelidade? (s/n): ")
leia(resposta)
se (resposta = "s") entao
  aplica_desconto(total, 10)
fimse
escreval("Valor final: ", total)
```

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `aula_portugol_funcoes.pptx` | Slides da aula |
| `exercicios_extras.pdf` | Lista de exercícios com dicas de estrutura |
