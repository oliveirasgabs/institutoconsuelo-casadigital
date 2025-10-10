import json #Para conseguir importar em json

#Primeiro criei uma variavel como a ideia de matriz em C, cada linha irá armazenar uma palavra do arquivo
palavras_limpas = []

#Depois, o método with chama a função open para fazer a leitura do arquivo como uma nova variavel arquivo
with open("lista.txt", "r") as arquivo:
    #Para cada linha do arquivo, ele irá separar tirando qualquer caractere vazio '\n' e depois anexando cada palavra na matriz
    for linha in arquivo:
        palavras_sem_espaco = linha.strip()
        palavras_limpas.append(palavras_sem_espaco)

#Print para verificar a lista que está armazenando as palavras já tratadas
print(palavras_limpas)

total_palavras = 0
palavras_grandes = 0

for palavra in palavras_limpas:
    total_palavras+=1 #Igual c = total_palavras++ ou total_palavras = total_palavras + 1

    if len(palavra) > 5:
        palavras_grandes+=1

#Calculando porcentagem
porcentagem = 0.0

if (total_palavras > 0):
    porcentagem = (palavras_grandes * 100) / total_palavras

print("Total de palavras: ", total_palavras)
print("Total de palavras com mais de 5 letras: ", palavras_grandes)
print("Porcentagem de palavras com mais de 5 letras: ", porcentagem)

#Salvando os arquivos em json

salvando_info = {
    "total_palavras": total_palavras,
    "palavras_grandes": palavras_grandes,
    "porcentagem": porcentagem
}

with open("resultado.json", "w") as arquivo_json:
    json.dump(salvando_info, arquivo_json, indent=4)

