> par(mfrow=c(1,2))
> plot(dados$v.c.c.Yi ~ dados$DAP.cm..X1)
> plot(dados$v.c.c.Yi ~dados$ht.m..X2)
> #O diagrama de dispersão da Figura 11 (a) mostra uma relação
curvilínea entre as
> #O diagrama de dispersão mostra uma relação curvilínea entre
as variáveis (Y,X1) e (Y, X2)
>
> mean(dados$DAP.cm..X1)
[1] 25.11324
> mean(dados$ht.m..X2)
[1] 32.48919
>
> DAP1 = dados$DAP.cm..X1 - mean(dados$DAP.cm..X1)
> ht1 = dados$ht.m..X2 - mean(dados$ht.m..X2)
>
> ajuste = lm(dados$v.c.c.Yi~DAP1+I(DAP1^2) + ht1+I(ht1^2) +
DAP1*ht1)
> summary(ajuste)Call:
lm(formula = dados$v.c.c.Yi ~ DAP1 + I(DAP1^2) + ht1 +
I(ht1^2) +
DAP1 * ht1)
Residuals:
Min 1Q Median 3Q Max
-0.143780 -0.027122 -0.001236 0.027294 0.108929
Coefficients:
Estimate Std. Error t value Pr(>|t|)
(Intercept) 0.6993935 0.0181071 38.625 < 2e-16 ***
DAP1 0.0487848 0.0039278 12.420 1.43e-13 ***
I(DAP1^2) 0.0001519 0.0007494 0.203 0.8407
ht1 0.0301172 0.0042905 7.019 7.02e-08 ***
I(ht1^2) -0.0016642 0.0010549 -1.578 0.1248
DAP1:ht1 0.0040688 0.0016696 2.437 0.0207 *
---
Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
Residual standard error: 0.05952 on 31 degrees of freedom
Multiple R-squared: 0.9916, Adjusted R-squared: 0.9903
F-statistic: 732.7 on 5 and 31 DF, p-value: < 2.2e-16
>
>
> shapiro.test(residuals(ajuste))
Shapiro-Wilk normality test
data: residuals(ajuste)
W = 0.97805, p-value = 0.6636
>
>
> windows()
> plot(fitted(ajuste), residuals(ajuste),xlab="Valores
Ajustados",ylab="Resíduos")
> abline(h=0)
> plot(DAP1,
residuals(ajuste),xlab="DAP-Média",ylab="Resíduos")> abline(h=0)
> plot(ht1, residuals(ajuste),xlab="ht-Média",ylab="Resíduos")
> abline(h=0)> qqnorm(residuals(ajuste), ylab="Resíduos",xlab="Quantis
teóricos",main="")
> qqline(residuals(ajuste))#Gráfico da Probabilidade Normal dos Resíduos
> plot(fitted(ajuste), residuals(ajuste),xlab="Valores
Ajustados",ylab="Resíduos")
