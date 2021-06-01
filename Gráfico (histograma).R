dados = c(8, 11, 8, 12, 14, 13, 11, 14, 14, 15, 6, 10, 14, 19, 6, 12, 7, 5, 8, 8, 10, 16, 10, 12, 12, 8, 11, 6, 7, 12,
7, 10, 14, 5, 12, 7, 9, 12, 11, 9, 14, 8, 14, 8, 12, 10, 12, 22, 7, 15)

# o vetor dados representa o conjunto de dados com que vamos trabalhar. Nesse caso, o número de erros de impressão da primeira
página de um jornal durante 50 dias, o exemplo do livro. 

freq = table(dados)
barplot(freq, ylab = "Frequência", xlab = "n° de erros")
  
#cria um gráfico de barras com a frequência de cada dado.

hist(freq)
#cria um histograma da frequência dos dados.

hist(dados, freq = FALSE)
#colocar o mesmo gráfico em frequência relativa.

hist(dados, main = "frequência dos erros de impressão", ylab = "frequência", xlab = "erros de impressão")
#inserindo título no gráfico.

hist(dados, main = "frequência dos erros de impressão", ylab = "frequência", xlab = "erros de impressão", col = c('violet'), border = FALSE)
#colorindo o histograma.




------------------------------------------------------------------------------------
