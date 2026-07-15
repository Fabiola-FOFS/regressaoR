####REGRESSION
#LINEAR UNIVARIABLE

df <- read.table("C:/bioinformatica/Estudando/SCRIPT REGRESSAO/Sheet_STATLAB.txt",header = TRUE,sep = " ")
head(df) 

#Conditions for linear modeling
library(ggplot2)
library(ggpubr)

#1. Linear relationship between continuous variables
ggplot(df, aes(x=Weight, y=Height)) + 
  geom_point()+theme_minimal()+
  geom_smooth(method=lm, se=FALSE)+geom_point(size = 2)
stat_cor(method="spearman")

#2. Normally distributed residuals
model<-lm(Weight~Height,data=df)
hist(residuals(model))
plot(density(resid(model)))

#3. Constant variation of residuals
plot(residuals(model))


##Correlation coefficient
R<-cor(df$Weight,df$Height,method="spearman")
R_squared<-R*R #17% of Weight is explained by Height


#Hypothesis testing through T statistics
#Cálculo da linha dos mínimos quadrados
model<-lm(Weight~Height,data=df) #Weight = y (dep. var); Height = x (indep. var.)
summary(model)
#Residuals with similar distance from 0; median close to 0
#Significance for the indep. var. means it can predict the dep. var.
#Multiple R² = R² ; The indep. var. explains 19% of the dep. var.
df$Height
y=b+ax

plot(resid(model))
abline(0,0)

qqnorm(resid(model))
qqline(resid(model))



##get linear equation
coef <- coef(model)
linear_equation <- paste("Weight =",
                         coef(model)[[1]],
                         "+",
                         coef(model)[[2]],
                         "* Height")
print(linear_equation)
#Weight = 17.2766045374632 + 42.1956754712223 * Height
#Weight = 17.27 + 42.19 x 1
#Weight = 59.46

#Weight = 17.27 + 42.19 x 2
#101.65




















#LINEAR MULTIPLE
head(df)
model<-lm(Weight~Height+IQ,data=df)
summary(model)

model<-lm(Weight~Height+Age,data=df)
summary(model)

coef <- coef(model)
linear_equation <- paste("Weight =",
                         coef(model)[[1]],
                         "+",
                         coef(model)[[2]],
                         "* Height",
                         "",
                         coef(model)[[3]],
                         "* IQ")
print(linear_equation)

##Selecting the best model based on the adjusted R²
model1<-lm(IQ~Height+Tobacco,data=df)
summary(model1)

model2<-lm(IQ~Height+Tobacco+Sex,data=df)
summary(model2)

model3<-lm(IQ~Height+Tobacco+Sex+BMI,data=df)
summary(model3)

model4<-lm(IQ~Height+Tobacco+BMI,data=df)
summary(model4)

#Generate a model with all variables and then 
#exclude those that does not increase R² compared with the full model


##Selecting model based on p-value
##Select those which are significant in the univariable model
















#LOGISTIC WITH CATEGORICAL DATA
#PREDICT SOMETHING YES OR NOT
#TOBACCO USE PREDICTED BY SEX
df$Tobacco_Binary<-factor(with(df,ifelse(Tobacco=="Yes","1","0")))
df$Tobacco_Binary<-factor(df$Tobacco_Binary,levels=c("1","0"))

#GLM using binomial instead of other types
model <- glm(Tobacco_Binary~Sex,family=binomial(link = "logit"),data=df) 
summary(model)

coef <- coef(model) ##log(odds ratio)
exp(coef(model)) ##odds




















#LOGISTIC MULTIPLE WITH CONTINUOUS DATA
#TOBACCO USE PREDICTED BY IQ AND HEIGHT
df$Tobacco_Binary<-as.numeric(with(df,ifelse(Tobacco=="Yes","1","0")))

model <- glm(Tobacco_Binary~Sex+IQ+BMI,family=binomial(link = "logit"),data=df) #GLM using binomial instead of other types
summary(model) 

coef <- coef(model) ##log(odds ratio)
exp(coef(model)) ##odds













###ODDS IN LOGISTIC REGRESSION

##ODDS = RATIO OF SOMETHING HAPPENING BY SOMETHING NOT HAPPENING
##PROBABILITY = RATIO OF SOMETHING HAPPENING BY EVERYTHING THAT COULD HAPPEN
##ODDS = 5/3 -- 5 win by 3 losses in five games 
##PROBABILITY = 5/8 -- 5 win by all 8 games 
##RATIO OF PROBABILITY = ODDS
coef<-coef(model)
exp(coef(model))





