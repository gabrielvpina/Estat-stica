getwd() # diret�rio de trabalho (pasta onde se importa o arquivo)

dados <- read.csv(file = "Dados_estatistica(05-04-21).csv", header = TRUE, sep = "\t", dec = ",")
#importando o arquivo (header = nome de coluna, sep = separa��o dos termos, dec = s�mbolo decimal)

class(dados) # saber o tipo de vari�vel

str(dados) # vizualiza��o de dados no console

mean(dados$U.A.) # m�dia de U.A.
median(dados$U.A.) # mediana de U.A.
sd(dados$U.A.) # desvio-padr�o de U.A.
max(dados$U.A.) # m�xima de U.A.
min(dados$U.A.) # m�nima de U.A.
summary(dados$U.A.) # v�rias informa��es dos dados
quantile(dados$U.A.) # informa os quartis da sequ�ncia