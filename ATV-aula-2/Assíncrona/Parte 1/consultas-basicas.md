## Parte 1 - COnsultas básicas

### Exercício 1

Liste todos os clientes cadastrados

```sql
SELECT * FROM clientes;
```

### Exercício 2

Liste todos os produtos da categoria "Acessórios".

```sql
SELECT * FROM produtos WHERE CATEGORIA = 'Acessórios';
```

### Exercício 3

Mostre todos os pedidos feitos por Ana Silva.

```sql
SELECT * FROM pedidos WHERE (SELECT clienteId FROM clientes WHERE nome = 'Ana Silva');
```
