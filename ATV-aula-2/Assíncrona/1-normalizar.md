## Primeira Atividade

## Normalização do exemplo abaixo.

```sql
CREATE TABLE PedidosProblematicos (
    PedidoID INT,
    ClienteNome VARCHAR(100),
    ClienteEmail VARCHAR(100),
    ClienteCidade VARCHAR(50),
    ClienteEstado VARCHAR(2),
    ClienteCEP VARCHAR(10),
    ProdutoNome VARCHAR(100),
    ProdutoCategoria VARCHAR(50),
    ProdutoPreco DECIMAL(10,2),
    Quantidade INT,
    DataPedido DATE,
    TelefonesContato VARCHAR(200),
    NomeVendedor VARCHAR(100),
    ComissaoVendedor DECIMAL(5,2),
    EnderecoCompleto VARCHAR(300)
);
```

Separando em uma tabela de clientes:

```sql
CREATE TABLE clientes (
  cliente_id PRIMARY KEY,
  nome_cliente VARCHAR(50),
  sobrenome VARCHAR(50),
  email VARCHAR(100) UNIQUE
);
```

Como um cliente pode ter vários endereços, é interessante ter uma tabela só para endereços

```sql
CREATE TABLE enderecos (
  endereco_id PRIMARY KEY,
  cliente_id INT NOT NULL REFERENCES clientes(cliente_id),
  rua VARCHAR(150),
  cidade VARCHAR(50),
  estado VARCHAR(50),
  cep VARCHAR(10),
  complemento VARCHAR(150)
);
```

Assim como um cliente pode ter vários telefones, podemos criar uma tabela só para os telefones

```sql
CREATE TABLE telefones (
  telefone_id PRIMARY KEY,
  cliente_id INT NOT NULL REFERENCES clientes(cliente_id),
  telefone VARCHAR(20)
);
```

Precisamos também de uma tabela só para os vendedores

```sql
CREATE TABLE vendedores (
  vendedor_id PRIMARY KEY,
  nome_vendedor VARCHAR(100),
  comissao DECIMAL(5,2) -- 5 pois só pode ter até total de 5 digitos, contando com o que vem após virgula e quantos digitos após a virgula
);
```

Agora, será necessário uma tabela para armazenar as categorias dos produtos

```sql
CREATE TABLE categorias (
  categoria_id PRIMARY KEY,
  nome_categoria VARCHAR(50) UNIQUE
);
```

Depois de criada a tabela de categoria, é necessário criar a tabela de produtos em si

```sql
CREATE TABLE produtos (
  produto_id PRIMARY KEY,
  nome_produto VARCHAR(100),
  categoria_id INT REFERENCES categorias(categoria_id),
  preco DECIMAL(10,2)
);
```
