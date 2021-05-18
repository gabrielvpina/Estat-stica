> View(dados)
> summary(dados$d.2.h_X)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1122   10053   23013   25345   38702   74485 
> summary(dados$volume_Y)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.0431  0.2976  0.7967  0.8453  1.3073  2.4913 
> plot(dados$d.2.h_X, dados$volume_Y)
> #comando "plot()" usado para construção do gráfico
> #comando summary() retorna as estatísticas mínimo, quartis, média e máximo
> #comando plot() é usado para o diagrama de dispersão do X e Y
> 
> cor(dados$d.2.h_X, dados$volume_Y)
[1] 0.9953937
> #comando cor() usado para calcular o Coeficiente de Correlação Linear de Pearson entre as variáveis
> 
> cor.test(dados$d.2.h_X, dados$volume_Y)

	Pearson's product-moment correlation

data:  dados$d.2.h_X and dados$volume_Y
t = 61.424, df = 35, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9909978 0.9976456
sample estimates:
      cor 
0.9953937 

> #comando cor.test() é usado para realizar um Teste de Hipóteses para a
> o Coeficiente de Correlação. Como o Valor P do teste (p-value < 2.2e-16) é bem pequeno, conclui-se que o valor do Coeficiente de
Erro: unexpected symbol in "o Coeficiente"
> Correlação Linear de Pearson tem significância Estatística
Erro: unexpected symbol in "Correlação Linear"
> 
> #comando cor.test() é usado para realizar um Teste de Hipóteses para o Coeficiente de Correlação. Como o Valor P do teste (p-value < 2.2e-16) é bem pequeno, conclui-se que o valor do Coeficiente de Correlação Linear de Pearson tem significância Estatística
> 
> ajuste = lm(dados$d.2.h_X ~ dados$volume_Y)
> 
> ajuste

Call:
lm(formula = dados$d.2.h_X ~ dados$volume_Y)

Coefficients:
   (Intercept)  dados$volume_Y  
        -451.7         30516.7  

> #função lm() para ajustar um modelo de regressão linear no R
> #será um modelo de regressão linear de primeira ordem
> # O R retorna o valor dos coeficientes de βˆ0 e βˆ1 estimados via Método de Mínimos Quadrados. Logo, a equação da reta ajustada é dada por Yˆ = -451,7 +30516.7Xi
> 
> summary(ajuste)

Call:
lm(formula = dados$d.2.h_X ~ dados$volume_Y)

Residuals:
    Min      1Q  Median      3Q     Max 
-3878.7 -1089.4   -69.6   974.0  5639.3 

Coefficients:
               Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -451.7      513.5   -0.88    0.385    
dados$volume_Y  30516.7      496.8   61.42   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1797 on 35 degrees of freedom
Multiple R-squared:  0.9908,	Adjusted R-squared:  0.9905 
F-statistic:  3773 on 1 and 35 DF,  p-value: < 2.2e-16
