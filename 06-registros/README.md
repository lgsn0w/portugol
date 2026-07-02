# Registros e Dados Estruturados

Um **registro** é um tipo de dado que você mesmo define, agrupando campos de tipos diferentes dentro de uma só variável. Enquanto um vetor guarda vários valores do **mesmo tipo**, um registro guarda campos de **tipos diferentes** que descrevem uma mesma entidade.

Pense em uma ficha de cadastro: ela tem nome (texto), idade (inteiro) e peso (real) — tipos diferentes, mas todos descrevem a mesma pessoa. O registro é exatamente isso.

```portugol
tipo Pessoa = registro
  nome: caractere
  idade: inteiro
  peso: real
fimregistro
```

---

## Por que usar registros

Sem registros, para representar 3 livros você precisaria de variáveis soltas:

```portugol
// Sem registro — difícil de organizar e escalar
var
  titulo1, titulo2, titulo3: caractere
  autor1, autor2, autor3: caractere
  ano1, ano2, ano3: inteiro
```

Com um registro, a estrutura fica limpa e legível:

```portugol
// Com registro — organizado e fácil de expandir
tipo Livro = registro
  titulo: caractere
  autor: caractere
  ano: inteiro
fimregistro

var
  livro1, livro2, livro3: Livro
```

A diferença fica ainda mais clara quando você combina registros com vetores — 50 livros sem esforço.

---

## Como declarar um registro

A declaração vai **antes** do bloco `var`, com a palavra-chave `tipo`:

```portugol
tipo NomeDoTipo = registro
  campo1: tipo1
  campo2: tipo2
  // ... quantos campos precisar
fimregistro
```

Depois, você declara variáveis desse tipo no `var` normalmente:

```portugol
var
  minhaVariavel: NomeDoTipo
```

---

## Acessando campos com ponto

Para ler ou escrever um campo específico, use o nome da variável seguido de ponto e o nome do campo:

```portugol
// Atribuição direta
livro.titulo <- "Dom Casmurro"
livro.autor  <- "Machado de Assis"
livro.ano    <- 1899

// Leitura do teclado
leia(livro.titulo)
leia(livro.autor)
leia(livro.ano)

// Exibição na tela
escreval("Título: ", livro.titulo)
escreval("Autor: ", livro.autor)
escreval("Ano: ", livro.ano)
```

---

## Exemplo 1 — Ficha de um livro (Fácil)

Cria um registro `Livro`, lê os três campos e exibe na tela.

```portugol
algoritmo "FichaLivro"

tipo Livro = registro
  titulo: caractere
  autor: caractere
  ano: inteiro
fimregistro

var
  livro: Livro  // variável do tipo que criamos

inicio
  // Leitura campo a campo usando ponto
  escreva("Título: ")
  leia(livro.titulo)

  escreva("Autor: ")
  leia(livro.autor)

  escreva("Ano: ")
  leia(livro.ano)

  // Exibição dos dados
  escreval("Título: ", livro.titulo)
  escreval("Autor: ", livro.autor)
  escreval("Ano: ", livro.ano)
fimalgoritmo
```

**Entrada/Saída esperada:**
```
Título: Dom Casmurro
Autor: Machado de Assis
Ano: 1899
---
Título: Dom Casmurro
Autor: Machado de Assis
Ano: 1899
```

---

## Exemplo 2 — Compra no mercado (Médio)

Calcula o total de uma compra e avisa se passou de R$ 500.

```portugol
algoritmo "CompraNoMercado"

tipo Produto = registro
  nome: caractere
  preco: real
  quantidade: inteiro
fimregistro

var
  produto: Produto
  total: real  // variável auxiliar para o resultado do cálculo

inicio
  escreva("Nome do produto: ")
  leia(produto.nome)

  escreva("Preço: ")
  leia(produto.preco)

  escreva("Quantidade: ")
  leia(produto.quantidade)

  // Cálculo feito com os campos do registro
  total <- produto.preco * produto.quantidade

  escreval("Total: ", total)

  // Condicional baseada no total calculado
  se (total > 500) entao
    escreval("Compra de alto valor")
  fimse
fimalgoritmo
```

**Entrada/Saída esperada:**
```
Nome do produto: Monitor
Preço: 350.00
Quantidade: 2
---
Total: 700.0
Compra de alto valor
```

---

## Registros dentro de vetores

Você pode criar um **vetor de registros** — a combinação mais poderosa do Portugol para organizar listas de entidades complexas.

```portugol
tipo Produto = registro
  nome: caractere
  preco: real
fimregistro

var
  estoque: vetor[1..10] de Produto  // 10 produtos
  i: inteiro

inicio
  para i de 1 ate 10 faca
    leia(estoque[i].nome)   // acesso: vetor[indice].campo
    leia(estoque[i].preco)
  fimpara
fimalgoritmo
```

O acesso é sempre `vetor[indice].campo` — primeiro o índice do vetor, depois o ponto com o campo do registro.

---

## Exemplo 3 — O filme mais bem avaliado (Médio)

Lê 4 filmes (título + nota) e encontra o de maior nota percorrendo o vetor uma vez.

```portugol
algoritmo "MelhorFilme"

tipo Filme = registro
  titulo: caractere
  nota: real
fimregistro

var
  filmes: vetor[1..4] de Filme
  i: inteiro
  indiceMelhor: inteiro  // guarda o índice do melhor até agora

inicio
  // Leitura dos 4 filmes
  para i de 1 ate 4 faca
    escreva("Título do filme ", i, ": ")
    leia(filmes[i].titulo)
    escreva("Nota: ")
    leia(filmes[i].nota)
  fimpara

  // Assume que o primeiro é o melhor e vai comparando
  indiceMelhor <- 1
  para i de 2 ate 4 faca
    se (filmes[i].nota > filmes[indiceMelhor].nota) entao
      indiceMelhor <- i  // atualiza se achou uma nota maior
    fimse
  fimpara

  // Exibe o vencedor usando o índice guardado
  escreval("Melhor filme: ", filmes[indiceMelhor].titulo,
           " (", filmes[indiceMelhor].nota, ")")
fimalgoritmo
```

**Entrada/Saída esperada:**
```
Título do filme 1: Interestelar  Nota: 9.2
Título do filme 2: Matrix        Nota: 8.8
Título do filme 3: Coringa       Nota: 8.5
Título do filme 4: Duna          Nota: 9.0
---
Melhor filme: Interestelar (9.2)
```

> **Dica de raciocínio:** não precisa ordenar o vetor. Basta comparar cada elemento com o melhor encontrado até aquele momento — um único `para` resolve.

---

## Exemplo 4 — Folha de pagamento (Difícil)

Lê 5 funcionários, calcula bônus e total de cada um, classifica por faixa salarial e acumula o custo total da empresa.

```portugol
algoritmo "FolhaPagamento"

tipo Funcionario = registro
  nome: caractere
  salario: real
  horasExtras: inteiro
fimregistro

var
  funcionarios: vetor[1..5] de Funcionario
  i: inteiro
  bonus: real
  total: real
  totalEmpresa: real  // acumulador do custo total
  faixa: caractere

inicio
  // ---- Leitura ----
  para i de 1 ate 5 faca
    escreva("Nome: ")
    leia(funcionarios[i].nome)
    escreva("Salário: ")
    leia(funcionarios[i].salario)
    escreva("Horas extras: ")
    leia(funcionarios[i].horasExtras)
  fimpara

  // ---- Processamento e saída ----
  totalEmpresa <- 0  // acumulador começa em zero antes do laço

  para i de 1 ate 5 faca
    // Bônus = horas extras × R$ 25 por hora
    bonus <- funcionarios[i].horasExtras * 25
    total <- funcionarios[i].salario + bonus

    // Classificação por faixa
    se (total > 5000) entao
      faixa <- "Faixa alta"
    senao
      se (total > 2000) entao
        faixa <- "Faixa média"
      senao
        faixa <- "Faixa básica"
      fimse
    fimse

    // Exibe os dados do funcionário
    escreval(funcionarios[i].nome, " | Total: ", total, " | ", faixa)

    // Acumula o custo para a empresa
    totalEmpresa <- totalEmpresa + total
  fimpara

  escreval("Total pago pela empresa: R$ ", totalEmpresa)
fimalgoritmo
```

**Entrada/Saída esperada (1 funcionário de exemplo):**
```
Nome: Marta
Salário: 4200.00
Horas extras: 12
---
Marta | Total: 4500.0 | Faixa alta
```

> **Dica de raciocínio:** o acumulador `totalEmpresa` começa em zero **antes** do `para` e soma o total de cada funcionário a cada iteração.

---

## Resumo da sintaxe

| Conceito | Sintaxe |
|---|---|
| Definir um tipo | `tipo Nome = registro ... fimregistro` |
| Declarar variável | `variavel: Nome` |
| Acessar campo | `variavel.campo` |
| Vetor de registros | `lista: vetor[1..N] de Nome` |
| Acessar campo no vetor | `lista[i].campo` |

---

## Quando usar registros vs. variáveis soltas vs. vetores simples

| Situação | Melhor escolha |
|---|---|
| Um único valor numérico ou texto | Variável simples |
| Vários valores do **mesmo tipo** | Vetor simples |
| Vários campos de **tipos diferentes** descrevendo uma entidade | Registro |
| Uma lista de entidades com múltiplos campos | Vetor de registros |

---

## Arquivos

| Arquivo | Descrição |
|---|---|
| `Registros_e_Dados_Estruturados.pptx` | Slides da aula |
| `Exercicios_Registros_Dia2.pdf` | Lista de 4 exercícios (fácil → difícil) |
