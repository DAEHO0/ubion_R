# 3. ANOVA test

summary(df$��������)
help('aov')
str(df)
colnames(df)
aov(���.�����ֱ� ~ ��������, data = df)

"""
Call:
   aov(formula = ���.�����ֱ� ~ ��������, data = df)

Terms:
                �������� Residuals
Sum of Squares    221938  64268831
Deg. of Freedom        1       998

Residual standard error: 253.7669
Estimated effects may be unbalanced

"""

anova <- aov(���.�����ֱ� ~ ��������, data = df)
summary(anova)