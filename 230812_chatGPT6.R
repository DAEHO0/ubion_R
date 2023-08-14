### ������ƽ ȸ�� ###

# ���̺귯�� �ҷ�����

library(dplyr)
library(ggplot2)
library(glmnet)

# ������ �ҷ�����
siera <- data.frame(X1 = rnorm(100), X2 = norm(100), Y = rbinom(100, 1, 0.5))
# Error in base::norm(x, type, ...) : 'A' must be a numeric matrix

# ������ƽ ȸ�� �� ����
lgt_mdl <- glm(Y ~ X1 + X2, data = siera, family = "binomial")

# �� ��� ���
summary(siera)

# ������ƽ �Լ��� Ȯ�� ����
siera$prdct <- predict(lgt_mdl, newdata = siera, type = "response")


### KNN ###

# ���̺귯�� �ҷ�����
install.packages('class')
library(class)
# Error in value[[3L]](cond) : 
# Package ��class�� version 7.3.21 cannot be unloaded:
#   Error in unloadNamespace(package) : namespace ��class�� is imported by ��ipred�� so cannot be unloaded

set.seed(123)
tango <- data.frame(X1 = rnorm(50), X2 = rnorm(50), Y = c(rep('A', 25), rep('B', 25)))

# KNN �� �з� ����
k <- 3
knn_mdl <- knn(train = tango[ , c('X1', 'X2')], test = data[ , c("X1", "X2")], cl = siera$Y k = k)

#���� ��� ���
knn_mdl


### �ǻ���� ���� ###

# ���̺귯�� �ҷ�����
install.packages('rpart')
library(rpart)

# ���� ������ ����
set.seed(123)
uniform <- data.frame(X1 = rnorm(100), X2 = rnorm(100), Y = factor(sample(c("A", "B"), 100, replace = TRUE)))

# �ǻ���� ���� ����
tre_mdl <- rpart(Y ~ X1 + X2, data = uniform, method = "class")

# �ǻ���� ���� �ð�ȭ
library(rpart.plot)
prp(tre_mdl)