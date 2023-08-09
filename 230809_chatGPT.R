# Chat GPT

### �ּ��� �м� R �ڵ�

# ���̺귯�� �ҷ�����
library(stats)

# ������ ����
ex <- data.frame(x1 = c(1, 2, 3, 4, 5),
                 x2 = c(2, 3, 4, 5, 6),
                 x3 = c(5, 4, 3, 2, 1))

# �ּ��� �м� ����
pca_rslt <- prcomp(ex, scale = TRUE)

# �ּ��� �м� ��� ���
summary(pca_rslt)

### ���κм� R �ڵ�

# ���̺귯�� �ҷ�����
library(stats)

# ������ ����
ex <- data.frame(x1 = c(1, 2, 3, 4, 5),
                 x2 = c(2, 3, 4, 5, 6),
                 x3 = c(5, 4, 3, 2, 1))

# ���κм� ����
fctr_rslt <- factanal(ex, factors = 2, rotation = "varimax")
# Error in factanal(ex, factors = 2, rotation = "varimax") : 
# 2 factors are too many for 3 variables

# ���κм� ��� ���
summary(fctr_rslt)

# ���� �ε� ���
fctr_rslt$loadings

### ������ Ŭ�����͸�(k-means clustering)

# ���̺귯�� �ҷ�����
install.packages("cluster")
library(cluster)

# k-means Ŭ�����͸�
clusters <- kmeans(big_data[ , c("variable1", "variable2")], centers = 3)

# Ŭ������ ��� �ð�ȭ
ggplot(big_data, aes(x = variable1, y = variable2,
                     factor(clusters$cluster))) + geom_point()
