### �ӻ�� ###

# ���̺귯�� �ҷ�����
install.packages('randomForest')
library(randomForest)

# ������ �ε�
data(iris)
train_data <- iris[1:100, -5]
train_label <-iris[1:100, 5]

# ���� ������Ʈ �� ����
rf_mdl <- randomForest(train_data, train_label)
# Error in randomForest.default(train_data, train_label) : 
#   Can't have empty classes in y.

# ����
predictions <- predict(rf_mdl, newdata = iris[101, 150], -5)

# ���� ��� ���