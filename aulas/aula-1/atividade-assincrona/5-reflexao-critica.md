# Quando usar SQL/Banco de Dados vs. Planilha Excel?

Pode-se utilizar uma planilha excel quando se tem um conjunto pequeno de dados e poucas colunas - ou sejam poucas pessoas editando de forma não concorrente. Ou seja, uma planilha excel é recomendado em relatórios pontuais.

Já para lidar com um SGBD, é necessário quando existem milhares de linhas e muitos relacionamentos entre as tabelas. Nesse cenário, caso tenham multiplos usuários e simultaneidade nas informações, é necessário para que os dados não sejam perdidos. Além disso, tendo necessidade de ter automações e escalabilidade ou melhor desempenho.

# Quais as vantagens e limitações de cada abordagem?

As **vantagens** de usar uma planilha excel é a facilidade inicial, que é muito rápida, além de ter uma curva de aprendizagem baixa, sendo bastante visual e com baixa portabilidade. Porém, suas **desvantagens** são o seu limite de dados, com puglins limitados, tendo segurança baixa e dificil de saber quem foi a ultima pessoa que editou.

Já nos SGBDS, as suas **vantagens** estão alta escalabilidade, regras de esquema bem estabelecidas, facilidade para automações, geração de históricos (LOGS), porém, suas **desvantagens** são no custo maior a depender do projeto, uma curva de aprendizagem maior, pois precisa entender e manipular usando SQL, além da visualização ser necessária utilizar programas visuais externos (Power BI).
