# t-test

data <- iris # data������ iris �����Ϳ� ����
str(data) # str �Լ��� ����Ͽ� data ������ ������ ���

setosa <- data[data$Species == "setosa", ] # data���� ��� �� Species�� setosa�� ���� ��� ���� ���
versicolor <- data[data$Species == "versicolor", ] # data���� ��� �� Species�� versicolor�� ���� ��� ���� ���

str(setosa) # 50���� ����ġ�� 5���� ���� ���
str(versicolor) # 50���� ����ġ�� 5���� ���� ���

help(t.test)
t.test(setosa$Sepal.Length, mu = 5, alternative = "two.sided")

"""
One Sample t-test

data:  setosa$Sepal.Length
t = 0.12036, df = 49, p-value = 0.9047
alternative hypothesis: true mean is not equal to 5
95 percent confidence interval:
 4.905824 5.106176
sample estimates:
mean of x 
    5.006
    
"""

t.test(setosa$Sepal.Length, versicolor$Sepal.Length, alternative = "two.sided")

"""
Welch Two Sample t-test

data:  setosa$Sepal.Length and versicolor$Sepal.Length
t = -10.521, df = 86.538, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.1057074 -0.7542926
sample estimates:
mean of x mean of y 
    5.006     5.936
    
"""
# paired t-test
# t.test(setosa_Before$Sepal.Length,
#        setosa_After$Sepal.Length,
#        paired = T,
#        alternative = "two.sided")