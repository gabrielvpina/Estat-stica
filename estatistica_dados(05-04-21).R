getwd() # diretório de trabalho (pasta onde se importa o arquivo)

dados <- read.csv(file = "Dados_estatistica(05-04-21).csv", header = TRUE, sep = "\t", dec = ",")
#importando o arquivo (header = nome de coluna, sep = separação dos termos, dec = símbolo decimal)

class(dados) # saber o tipo de variável

str(dados) # vizualização de dados no console

mean(dados$U.A.) # média de U.A.
median(dados$U.A.) # mediana de U.A.
sd(dados$U.A.) # desvio-padrão de U.A.
max(dados$U.A.) # máxima de U.A.
min(dados$U.A.) # mínima de U.A.
summary(dados$U.A.) # várias informações dos dados
quantile(dados$U.A.) # informa os quartis da sequência
range(dados$U.A.) # amplitude de U.A.

Q1 <- quantile(dados$U.A., probs = 0.25)
Q3 <- quantile(dados$U.A., probs = 0.75)

IQR = Q3 - Q1 # amplitrude interquartil (IQR)
print(IQR)
