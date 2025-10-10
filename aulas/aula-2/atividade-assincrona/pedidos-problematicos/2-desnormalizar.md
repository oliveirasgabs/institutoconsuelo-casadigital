## Desnormalizando as tabelas que foram normalizadas no exercício anterior

Supondo que estamos numa situação de verificar um pedido de forma rápida, podemos criar a tabela desnormalizada da seguinte maneira:

```sql
CREATE TABLE pedidos_desnormalizado (
  pedido_id PRIMARY KEY,
  data_pedido
)
```
