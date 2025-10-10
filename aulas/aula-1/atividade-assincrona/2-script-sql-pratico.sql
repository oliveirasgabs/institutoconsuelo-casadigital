-- Criação da tabela de categorias

CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY, -- Identificador único da categoria
    nome_categoria VARCHAR(100) NOT NULL -- Nome da categoria como char e não pode ser nulo
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Data de criação do registro | DEFAULT CURRENT_TIMESTAMP define o valor padrão como a data e hora atual
);

-- Criação da tabela de produtos

CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY, -- Identificador único do produto
    id_categoria INT NOT NULL, -- coluna que guarda o id da categoria (FK)
    nome_produto VARCHAR(100) NOT NULL, -- Nome do produto como char e não pode ser nulo
    preco DECIMAL(10, 2) NOT NULL, -- Preço do produto com até 10 dígitos, sendo 2 decimais e não pode ser nulo
    quantidade_estoque INT NOT NULL CHECK(quantidade_estoque >= 0), -- Quantidade em estoque como inteiro e não pode ser nulo e menor que zero
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Data de criação do registro | DEFAULT CURRENT_TIMESTAMP define o valor padrão como a data e hora atual
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria) -- Chave estrangeira referenciando a tabela categorias
);

-- Inserção de dados na tabela de categorias (pelo menos 5 registros)

INSERT INTO categorias (nome_categoria) VALUES
('Eletrônicos'),
('Roupas'),
('Alimentos'),
('Livros'),
('Móveis');

-- Inserção de dados na tabela de produtos (pelo menos 5 registros)

INSERT INTO produtos (nome_produto, preco, quantidade_estoque, id_categoria) VALUES
('Smartphone', 1999.99, 10, 1),
('Camiseta', 49.90, 20, 2),
('Arroz', 4.99, 100, 3),
('Crepúsculo', 39.90, 15, 4),
('Sofá', 899.99, 5, 5);

-- Consultas usando where (mínimo 3 exemplos)

-- Produtos com preço maior que 100
SELECT * FROM produtos WHERE preco > 100;

-- Produtos com quantidade em estoque menor que 10
SELECT * FROM produtos WHERE quantidade_estoque < 10;

-- Produtos da categoria "Eletrônicos"
SELECT * FROM produtos WHERE id_categoria = (SELECT id_categoria FROM categorias WHERE nome_categoria = 'Eletrônicos'); -- Subconsulta para obter o id da categoria "Eletrônicos"

-- Consulta usando ORDER BY (mínimo 1 exemplo)

SELECT * FROM produtos ORDER BY preco DESC; -- Ordena os produtos pelo preço em ordem decrescente

-- Consulta usando JOIN (mínimo 1 exemplo)

SELECT p.nome_produto, p.preco, c.nome_categoria
FROM produtos p
JOIN categorias c ON p.id_categoria = c.id_categoria; -- Junta as tabelas produtos e categorias para mostrar o nome do produto, preço e nome da categoria
