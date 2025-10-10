import csv #Trazendo biblioteca para fazer leitura de arquivos csv
import pandas as pd

#Aqui estou fazendo uma função que faz leitura de um csv e retorna os dados numa lista numa variavel
def ler_csv(arquivo): #A funcao recebe um arquivo como parametro
    dataframe = pd.read_csv(arquivo, delimiter=";") #Isso aqui foi recomendação da internet para conseguir saber o delimitador de um csv

    return dataframe

teste = ler_csv("notas.csv")

print(teste)