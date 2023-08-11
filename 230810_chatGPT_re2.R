### ������ �ð�ȭ ###

# ���̺귯�� �ҷ�����
install.packages('ggplot2')
installed.packages("ggplot2")
library(ggplot2)

# ������ �ε�

delta <- data.frame(age = c(25, 30, 22, 35, 40),
                    income = c(50000, 60000, 75000, 80000, 90000))

# ������ �ð�ȭ
ggplot(delta, aes(x = age, y = income)) + 
  geom_point() +
  labs(x = "Age", y = "Income") + 
  ggtitle("Scatter Plot of Age vs. Income")


### ������ ###

# ������ �ε�
golf <- c(25, 30, 22, 35, 40, 30, 28, 27, 32, 29)

# ���, �߾Ӱ�, �л�, ǥ������, �ֺ�, ���� ���
mean_val <- mean(golf)
mean_val

median_val <- median(golf)
median_val

var_val <- var(golf)
var_val

sd_val <- sd(golf)
sd_val

mode_val <- as.numeric(names(table(golf))[which.max(table(golf))])
mode_val

rang_val <- max(golf) - min(golf)
rang_val


### ���л� ###

# ������ �ε�
hotel <- data.frame(x = c(25, 30, 22, 35, 40),
                    y = c(50000, 60000, 75000, 80000, 90000))

# ���л� ���
covari_mat <- cov(hotel)
covari_mat


### ������ �ε� ###
india <- data.frame(x = c(25, 30 , 22, 35, 40),
                    y = c(50000, 60000, 75000, 80000, 90000))

# ������ ���
correl <- cor(india$x, india$y)
correl


### �������� ###

julu <- c(25, 30, 22, 35, 40, 28, 27, 32, 29)

# ���� ǥ�� t-���� ����

# �͹�����: ��� = 30
# �븳����: ��� != 30
t_rslt <- t.test(julu, mu = 30)
t_rslt


### ���Լ� ���� ###

# ������ �ε�
kilo <- c(25, 30, 22, 35, 40, 28, 27, 32, 29)

# ���Լ� ���� ����(Shapiro-Wilk ����)
shap_test_rslt <- shapiro.test(kilo)
shap_test_rslt
# Shapiro-Wilk normality test
# data:  kilo
# W = 0.97426, p-value = 0.9285 # W���� 1�� �������� ���Ժ����� �����


### ������ ���� ###

#������ �ε�
lima <- data.frame(gender = c("Male", "Female", "Male", "Female", "Male"),
                   smoking = c("Yes", "No", "No", "Yes", "No"))

# ���� ���̺� ����
cros_tab <- table(lima$gender, lima$smoking)

# ������ ����
chi_sq_test <- chisq.test(cros_tab)
# Warning message:
# In chisq.test(cros_tab) : Chi-squared approximation may be incorrect


### ��л� ���� ###

# ������ �ε�
group1 <- c(25, 30, 22, 35, 40)
group2 <- c(28, 27, 32, 29, 31)

# ��л� ����(���� ����)
levene_test <- levene_test(group1, group2)
# Error in levene_test(group1, group2) : 
# could not find function "levene_test"


### ����ǥ��(Undersampling) ###

# ���̺귯�� �ҷ�����
install.packages("dplyr")
library('dplyr')

# ���� ������ ����
mike <- data.frame(class = c("A", "A", "A", "B", "B", "B", "B", "B"))

# �ټ� Ŭ������ �Ҽ� Ŭ���� ������
majr_class <- filter(mike, class == "B")
minr_class <- filter(mike, class == "A")
majr_class
minr_class

# �ټ� Ŭ������ ���� ����ŭ �������� ����
undsmpl_majr <- sample_n(majr_class, nrow(minr_class))
undsmpl_majr

# �ټ� Ŭ������ �Ҽ� Ŭ���� ����
blncd_data <- bind_rows(undsmpl_majr, minr_class)
blncd_data

### ����ǥ��(Oversampling) ###

# ���̺귯�� �ҷ�����
install.packages("DMwR") # ��ġ �� �� �Ф�

# ���� ������ ����
november <- data.frame(class = ("A", "A", "A", "B", "B", "B", "B", "B"))

# �Ҽ� Ŭ������ ���� ���� �ټ� Ŭ������ ���� ���� �����
ovrsmpl_data <- SMOTE(class ~ ., november, perc.over = 200)
ovrsmpl_data