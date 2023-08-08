# 4. ī������ ����(F-Test)

chisq.test(df$����, df$���ιΰ�����)

"""
Pearson's Chi-squared test with Yates' continuity correction

data:  df$���� and df$���ιΰ�����
X-squared = 5.4044, df = 1, p-value = 0.02009


"""

df_gen0 <- df[df$���� == 0, ]
df_gen1 <- df[df$���� == 1, ]
str(df_gen0)
str(df_gen1)
mean(df_gen0$���ιΰ�����)
mean(df_gen1$���ιΰ�����)


# 5. ������� �м�

help(cor)
cor(df$�湮��, df$�Ѹ����, method = "pearson")
# 0.4737282 # ���� ��������̳� ������ �ʴ�
plot(df$�湮��, df$�Ѹ����)
abline(lm(df$�湮�� ~ df$�Ѹ����), col = "blue")
reg <- lm(�Ѹ���� ~ �湮��, data = df)
summary(reg)

"""
Call:
lm(formula = �Ѹ���� ~ �湮��, data = df)

Residuals:
      Min        1Q    Median        3Q       Max 
-18931365  -2152630   -895261    817111  52777858 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  2551792     253151   10.08   <2e-16 ***
�湮��      144307       8492   16.99   <2e-16 ***
---
Signif. codes:  0 ��***�� 0.001 ��**�� 0.01 ��*�� 0.05 ��.�� 0.1 �� �� 1

Residual standard error: 5122000 on 998 degrees of freedom
Multiple R-squared:  0.2244,	Adjusted R-squared:  0.2236 
F-statistic: 288.8 on 1 and 998 DF,  p-value: < 2.2e-16


"""