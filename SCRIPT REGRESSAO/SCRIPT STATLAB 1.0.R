#Basic R

##Installing packages
#Click and install

#Install function
install.packages('dplyr')
library('dplyr')

#Bioconductor function
install.packages("BiocManager")
library("BiocManager")
BiocManager::install("ggplot2",force=TRUE)
library(ggplot2)










#Help
library(tidyverse)

?tidyverse
??ggplot2
help(ggplot2)

??ggplot
??geom_boxplot




#Cleaning environment and console
thi<-5
jana<-3
caio<-4

rm(thi)
ls()

rm(list=ls())
#ctlr + L
















#Basic commands
#Basic commands
#Basic commands

#fuction use
example(sum)
example(print)

thi<-4
print(thi)
thi

#sum
2+3

#subtraction
2-3

#multiplication
2*3  

#division
2/3

#exp
2^2

#assign
a<-2+3
b=2+3
print(a)
a

aluno<-"Thiago"

soma_de_numeros<-sum(a,b,6,80,50,80,a,a,a,a,a,a,a,a,a,a)^5

270^5

2-3->b
print(b)
b

#assigning overlaps previous data

a<-4

a<-6

#creating data.frames
M <- data.frame(a,b)
print(M)
M












##Objects
##Objects
##Objects

##Where data is stored in RAM memory

##Vectors
#A vector is a variable in the commonly admitted meaning
#Instead of creating a variable for each observation, we generate a 
#sequence of data that has the same type

numbers<-c(1,2,3)
students<-c(1,2,3,5,7,3,5,7,8,10.5)

numbers_2<-1:4

sequencia_de_numeros<-seq(from=2,to=48764234,by=2875623)

??seq

rep(1:900,times=2)

Vet<-rep(1:10,each=4)

#functions in vectors
sort(sequencia_de_numeros)
rev(sequencia_de_numeros)
table(sequencia_de_numeros)
unique(sequencia_de_numeros)

sequencia_de_numeros[5]
sequencia_de_numeros[-3]
sequencia_de_numeros[1:3]
sequencia_de_numeros[-(2:6)]
sequencia_de_numeros[sequencia_de_numeros==25880609]
sequencia_de_numeros[sequencia_de_numeros>31631855]
sequencia_de_numeros[sequencia_de_numeros %in% c(2,31631855)]

#Logical
#Boolean values
logical<-c(TRUE, FALSE)

#Numeric
group<-c(1,2,3,4,5,6)

#Character
group1<-c('1','2')
group2<-c('Thiago','Vidotto')


#Factor
group_factor<-factor(c('Thiago','Vidotto',"Felipe"),levels=c('Felipe','Thiago',"Vidotto"))








##Basic functions
##Basic functions
##Basic functions


a<-2+3
test<-"3"

group<-c(1,2,3,4,5,6)
mode(group)
class(group)

group*2

group_2<-c(1,2,"3",4,5,6)
mode(group_2)
class(group_2)

group_2*2

group_3<-c("1","2","3","4","5","6")
mode(group_3)

group_4<-c("a","b","c","d","e")
mode(group_4)


group_3_numeric<-as.numeric(as.character(group_3))
class(group_3_numeric)
class(group_3)

group_2_factor<-factor(group_2)

group_1_character<-as.character(group)


group_4_numeric<-as.numeric(as.character(group_4))
class(group_4_numeric)
class(group_4)

##Objects with characters
group<-c("Treat1","Treat2","Treat1","Treat2","Treat2")
group<-c("Treat1","Treat2","Treat1","Treat2",FALSE)
group<-c(FALSE,TRUE,FALSE,FALSE)

mode(group)
class(group)

group_numeric<-as.numeric(as.character(group)) #NAs introduced by coercion
class(group_numeric)

group_factor<-factor(group,levels=c("Treat2","Treat1"))

length(group_factor)
dim(group_factor) #no dimensions for vectors


c<-"Variable_1"
mode(c)
length(c)


d<-TRUE
e<-FALSE
f<-NULL
mode(f)
length(f)

group_factor<-f














#Mathematical functions

#log
log(2)
vec<-c(3,4,5,5,5,6,7,19)
log(vec)

#exp
exp(2)
exp(vec)

#round
round(4.345645645,1)

#mean
mean(c(3,4,5,5,5,6,7,50))
mean(c(3,4,5,6,6,7,8,8))
mean(vec)

#median
median(c(3,4,5,5,5,6,7,19))
median(c(3,1,930,5,40,6,7,3,8,500))
median(vec)

#quantile
quantile(c(3,4,5,6,6,7,8,8))
quantile(vec)

#variance
var(c(3,4,5,6,6,7,8,8))

#standard deviation
sd(c(3,4,5,6,6,7,8,8))









#Data frames
#A data frame is a table composed with one or several vectors and/or 
#factors all of the same length but possibly of different modes.


#open table
getwd()
rm(list=ls())

read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt")

read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt",header=TRUE)

read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt",header=TRUE,sep="\t")

read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt",header=TRUE,sep=",")

read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt",header=TRUE,sep=";")

df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB.txt",header=TRUE,sep=" ")




##
dim(df)
names(df)
colnames(df)
class(df)

df[80:90,1:5]
head(df)
tail(df)

df2<-df[1:5,1:5]

df[,1:6]
df[,1:5]
df[1:5,]
df[c(1,8:10),c(1,3,5)]

df$Weight

class(df$Tobacco)
class(df$Weight)

df$Tobacco<-factor(df$Tobacco,levels=c("Yes","No"))

tobacco_yes<-subset(df, Tobacco %in% c("Yes"))
dim(tobacco_yes)
mean(df$Weight)

tall_yes<-subset(df, Height >1.8)
mean(tall_yes$Weight)

tall_yes_tobacco_yes<-subset(df, Height >1.8 & Tobacco %in% c("Yes"))
dim(tall_yes_tobacco_yes)

tall_no_tobacco_yes<-subset(df, Height <1.8 & Tobacco %in% c("Yes"))
dim(tall_no_tobacco_yes)

df$ID
df$Race
df$BMI
df$Sex

table(df$Race)
table(df$Race,df$Sex)

##transposing

df_t<-t(df)
dim(df)
dim(df_t)

class(df_t)

#converting to data frame

df_t<-data.frame(t(df))
class(df_t)





















df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB_Treatment.txt",header=TRUE,sep=" ")
head(df)
tail(df)
df[1:5,1:5]

#descriptive statistics
median(df$Height)
mean(df$Height)
range(df$Height)

median(df$Tobacco)

table(df$Race)
table(df$Tobacco)

table(df$Race,df$Tobacco)
table(df$Race,df$Age)

#median by group
colnames(df)
aggregate(df$Height, list(df$Tobacco), median,na.rm=TRUE)

aggregate(df$Height, list(df$Tobacco), mean,na.rm=TRUE) 

aggregate(df$Height, list(df$Tobacco), range,na.rm=TRUE)

aggregate(df$Height, list(df$Tobacco), quantile,na.rm=TRUE) 

aggregate(df$Height, list(df$Sex), median,na.rm=TRUE) 

aggregate(df$Height, list(df$Race), mean,na.rm=TRUE)






#structure
str(df)

install.packages("arsenal")
library(arsenal)

colnames(df)
df_organized <- tableby(Financial_status ~ Sex + Height + IQ +
                         BMI + Weight + Circumference, data=df)

summary(df_organized)
summary(df_organized,text=TRUE)













#Chi-square
table(df$Race,df$Sex)

chisq.test(table(df$Race,df$Sex))

chisq.test(table(df$Tobacco,df$Sex))

colnames(df)
chisq.test(table(df$Tobacco,df$BMI))



















#Fisher
fisher.test(table(df$Race,df$Sex))


fisher.test(table(df$Race,df$Tobacco))












#Shapiro test
#A significant results indicates that the distribution is NOT normal
#P<0.05 = non-normal distribution

str(df)
shapiro.test(df$Height)
shapiro.test(df$Weight)
shapiro.test(df$Sex)
is.numeric(df$Sex)

shapiro.test(df$IQ) #normal distribution
shapiro.test(df$Circumference) #normal distribution


hist(df$Height)
hist(df$Weight)
hist(df$Circumference)
hist(df$IQ)


install.packages("ggpubr")
library("ggpubr")
ggdensity(df$IQ)

ggdensity(df$Weight)

ggdensity(df$Height)

ggdensity(df$Circumference)


















#T-test

#independent t-test
#independent t-test
#independent t-test

#normality test
shapiro.test(df$Height) #P<0.05 = not normally distributed
shapiro.test(df$IQ)

t.test(df$IQ~df$Sex)
t.test(df$Height~df$Sex)

#summary
install.packages("dplyr")
library("dplyr")

group_by(df, Race) %>%
  reframe(
    count = n(),
    mean = mean(IQ, na.rm = TRUE),
    median = median(IQ, na.rm=TRUE),
    sd = sd(IQ, na.rm = TRUE),
    range = range(IQ, na.rm=TRUE)
  )

#simple boxplot
library(ggplot2)
ggplot(df, aes(Sex, IQ))+
  geom_boxplot(aes(fill=Sex))

ggplot(df, aes(Sex, IQ))+
  geom_violin(aes(fill=Sex))











#dependent t-test
#dependent t-test
#dependent t-test

#normality test
shapiro.test(df$IQ) #P<0.05 = not normally distributed

t.test(df$IQ~df$Treatment,paired=TRUE) #dependent ~ independent

#summary
library("dplyr")
group_by(df, Treatment) %>%
  summarise(
    count = n(),
    mean = mean(IQ, na.rm = TRUE),
    sd = sd(IQ, na.rm = TRUE)
  )

#simple boxplot
library(ggplot2)
ggplot(data=df, aes(Treatment, IQ))+
  geom_boxplot(aes(fill=Treatment))



















#Wilcołxon Signed Rank - Paired data
shapiro.test(df$Height) #P<0.05 = not normally distributed

wilcox.test(df$Height~df$Treatment,paired=TRUE) #not normal data

#https://stats.stackexchange.com/questions/597782/
#why-does-r-say-cannot-compute-exact-p-values-with-ties-when-i-can-do-it-with-p

#plots
library(ggplot2)

df$Treatment<-factor(df$Treatment,levels=c("Before","After"))

ggplot(data=df, aes(Treatment, Height))+
  geom_boxplot(aes(fill=Treatment))

##table
library("dplyr")
group_by(df, Treatment) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )













#Mann-Whitney - Wilcoxon Rank Sum - Unpaired data
wilcox.test(df$Height~df$Race) #not normal data

#plots
library(ggplot2)
ggplot(data=df, aes(Race, Height))+
  geom_boxplot(aes(fill=Race))

##table
library("dplyr")
group_by(df, Race) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )

















#Kruskal
#3 or more groups with not normal data
table(df$Financial_status)

kruskal.test(df$Height~df$Financial_status)
aggregate(df$Height, list(df$Financial_status), median,na.rm=TRUE) 

#poshoc Dunn
install.packages("FSA")
library(FSA)
df$Financial_status<-factor(df$Financial_status)
dunnTest(Height ~ Financial_status,data=df,method="bh") 

#plots
library(ggplot2)
ggplot(data=df, aes(Financial_status, Height))+
  geom_boxplot(aes(fill=Financial_status))

##table
library("dplyr")
group_by(df, Financial_status) %>%
  summarise(
    count = n(),
    median = median(Height, na.rm = TRUE)
  )



















#ANOVA

##One-way ANOVA
##One variable with 3 or more groups with a normally distributed dependent variable
anova_model<-aov(df$IQ~df$Financial_status)
summary(anova_model)

#Tukey post hoc
#Shows CIs and mean difference between groups
TukeyHSD(anova_model)

#plots
library(ggplot2)
ggplot(data=df, aes(Financial_status, IQ))+
  geom_violin(aes(fill=Financial_status))

#combining Kruskal Wallis and ANOVA
df_organized <- tableby(Financial_status ~ anova(IQ) + kwt(Height), data=df)
tests(df_organized)


df_organized <- tableby(Sex ~ anova(IQ) + wt(Height), data=df)
tests(df_organized)

args(tableby.control)
??tableby






##Two Way ANOVA
anova_model<-aov(df$IQ~df$Financial_status+df$Race)

anova_model<-aov(df$IQ~df$Financial_status+df$Tobacco)

summary(anova_model)

#Tukey post hoc
#Shows CIs and mean difference between groups
TukeyHSD(anova_model)

#plots
library(ggplot2)
table(df$Financial_status,df$Race)

ggplot(data=df, aes(Financial_status, IQ))+
  geom_boxplot(aes(fill=Race))

ggplot(data=df, aes(Race, IQ))+
  geom_boxplot(aes(fill=Financial_status))

ggplot(data=df, aes(Tobacco, IQ))+
  geom_boxplot(aes(fill=Financial_status))





















##Correlation
shapiro.test(df$Height)
shapiro.test(df$IQ)

##Pearson
cor(df$Circumference, df$IQ, method = c("pearson"))
cor.test(df$Circumference, df$IQ, method = c("pearson"))


#scatterplot
library(ggplot2)
ggplot(data=df, aes(Circumference, IQ))+
  geom_point()

#ggpubr
install.packages("ggpubr")
library("ggpubr")
ggscatter(df, x = "Circumference", y = "IQ", 
          add = "reg.line", 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Circumference", ylab = "IQ")


##Spearman
cor(df$BMI, df$Height, method = c("spearman"))
cor.test(df$BMI, df$Height, method = c("spearman"))

#plot
ggscatter(df, x = "BMI", y = "Height", 
          add = "reg.line", 
          cor.coef = TRUE, cor.method = "spearman",
          xlab = "BMI", ylab = "Height")






















###Plotting
###Plotting
###Plotting
###Plotting
###Plotting
df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB_Treatment.txt",header=TRUE,sep=" ")
df[1:5,1:5]

##Histogram
library(ggplot2)
library(ggpubr)

ggplot(df, aes(x=IQ)) + 
  geom_histogram(binwidth=10, color="black", fill="gray")


ggplot(df, aes(x=IQ)) + 
  geom_histogram(binwidth=10, color="black", fill="gray")+
geom_vline(aes(xintercept=mean(IQ)),
           color="blue", linetype="dashed", size=1)+
  geom_vline(aes(xintercept=median(IQ)),
             color="red", linetype="dashed", size=1)

ggplot(df, aes(x=Height)) + 
  geom_histogram(binwidth=0.05, color="black", fill="gray")+
  geom_vline(aes(xintercept=mean(Height)),
             color="blue", linetype="dashed", size=1)+
  geom_vline(aes(xintercept=median(Height)),
             color="red", linetype="dashed", size=1)

#by group
#search for colors in R

my_colors<-c("pink3","green2")

ggplot(df, aes(x=IQ,color=Tobacco)) + 
  geom_histogram(binwidth=10, fill="white",alpha=0.2,position="dodge")+
  scale_color_manual(values=my_colors)















#graphics and legends
my_colors<-c("orange3","purple3")


ggplot(df, aes(x=IQ,color=Sex)) + 
  geom_histogram(binwidth=10, fill="white",alpha=0.5,position="dodge")+
  scale_color_manual(values=my_colors)+
  theme(legend.title = element_text(size=14),
  axis.text=element_text(size=16,color="black"),
  axis.title=element_text(size=18,face="bold"),
  axis.text.x = element_text(angle = 0, hjust = 0),
  legend.text = element_text(size=12,color="black"))+
  scale_x_continuous(name = "IQ levels")+scale_y_continuous(name = "Frequency")

















##Boxplot
#Mean difference and rank difference
df<-read.table("/Users/thiagovidotto/Downloads/Sheet_STATLAB_Treatment.txt",header=TRUE,sep=" ")
df[1:5,1:5]

##ggplot
library(ggplot2)
library(ggpubr)
library(ggsignif)

#change method accordingly (t.test, wilcox.test)
#change paired argument (FALSE, TRUE) depending on paired t test or wilcoxon


#unpaired t test
table(df$Race)
shapiro.test(df$IQ)

ggplot(df, aes(Race, IQ))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(axis.text=element_text(size=15),
       axis.title=element_text(size=15,face="bold"),
       axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Race),outlier.size=0.4)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Race), method="t.test",label = "p.signif",
                     hide.ns = FALSE,paired=FALSE,label.x = 1.43)

#paired t test
ggplot(df, aes(Treatment, IQ))+ggtitle("") +
  scale_fill_manual(values=c("gold3","darkgreen"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Treatment),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Treatment), method="t.test",label = "p.signif",
                     hide.ns = FALSE,paired=TRUE,label.x = 1.43)


#unpaired wilcoxon (mann whitney)
ggplot(df, aes(Race, Height))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0.5))+
  geom_boxplot(aes(fill=Race),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Race), method="wilcox.test",label = "p.signif",
                     hide.ns = FALSE,paired=FALSE,label.x = 1.43)

#paired wilcoxon
ggplot(df, aes(Treatment, Height))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Treatment),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "")+
  stat_compare_means(aes(group = Treatment), method="wilcox.test",label = "p.format",
                     hide.ns = FALSE,paired=TRUE,label.x = 1.30)



#ANOVA
ggplot(df, aes(Financial_status, IQ))+ggtitle("") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.5)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "IQ levels")+
  stat_compare_means(aes(group = Financial_status), method="anova",label = "p.format",
                     hide.ns = FALSE,label.x = 1.9)

#Kruskal Wallis
ggplot(df, aes(Financial_status, Height))+ggtitle("Financial Status") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "Height (m)")+
  stat_compare_means(aes(group = Financial_status), method="kruskal.test",
                     label = "p.signif",hide.ns = FALSE,label.x = 1.9)


















##ggboxplot
install.packages("devtools")
devtools::install_github("kassambara/rstatix", dependencies = FALSE)
devtools::install_github("kassambara/ggpubr", dependencies = FALSE)

library(rstatix)
library(ggpubr)

#wilcox for non normal variable
stats <- df %>%
  group_by(Sex) %>%
  wilcox_test(Height ~ Race,paired=FALSE) %>%
  add_significance()

boxplot<-ggboxplot(df, x = "Race", y = "Height", fill = "Sex",palette = "PuRd")

stats <- stats %>% add_xy_position(x = "Sex")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$Height+0.1))






#t test for normal variable
stats <- df %>%
  t_test(IQ ~ Race,paired=FALSE) %>%
  add_significance()

boxplot<-ggboxplot(df, x = "Race", y = "IQ", fill = "Race",palette = "rickandmorty",add="jitter")

stats <- stats %>% add_xy_position(x = "Race")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$IQ-3))








#paired t test for normal variable
stats <- df %>%
  t_test(IQ ~ Treatment,paired=TRUE) %>%
  add_significance()

boxplot<-ggpaired(df, x = "Treatment", fill = "Treatment", palette = "RdBu",
                  y = "IQ",add="jitter",line.color = "black",
                  line.size = 0.1,ggtheme=theme_gray())

stats <- stats %>% add_xy_position(x = "Treatment")
boxplot + stat_pvalue_manual(stats, label = "p",y.position = max(df$IQ+13))













##Barplot
#Proportions
colnames(df)

table(df$Financial_status)

ggplot(df, aes(x=Financial_status)) + 
  geom_bar(stat="count")

ggplot(df, aes(x=Financial_status)) + 
  geom_bar(aes(y=after_stat(prop), group = 1),stat="count")






ggplot(df, aes(Financial_status))+ 
  geom_bar(aes(fill = Race)) +scale_x_discrete(name = "")+
  scale_y_continuous(name = "Financial Status")+
  theme_pubclean()+theme(axis.text.x = element_text(angle = 0, hjust = 0.5),
                         legend.title = element_blank(),
                         axis.text=element_text(size=13),
                         legend.text=element_text(size=13))




colnames(df)
ggplot(df, aes(Race))+ 
  geom_bar(aes(fill = Financial_status),position="fill") +scale_x_discrete(name = "")+
  scale_y_continuous(name = "Financial Status")+
  theme_pubclean()+theme(axis.text.x = element_text(angle = 0, hjust = 0.5),
                         #legend.title = element_blank(),
                         axis.text=element_text(size=13),
                         legend.text=element_text(size=13))


##Add error bar
library(dplyr)
df.summary <- df %>%
  group_by(Financial_status) %>%
  summarise(
    sd = sd(IQ, na.rm = TRUE),
    IQ = mean(IQ))

??group_by

#only error bars (from sd)
ggplot(df.summary, 
  aes(x = Financial_status, y = IQ, ymin = IQ-sd, ymax = IQ+sd))+ 
  geom_errorbar(width = 0.2) +
  geom_point(size = 1.5)

#barplot showing mean IQ + error bar
ggplot(df.summary, aes(x=Financial_status, y=IQ, fill=Financial_status)) + 
  geom_bar(stat="identity", color="black", 
           position=position_dodge()) +
  geom_errorbar(aes(ymin=IQ-sd, ymax=IQ+sd), width=.2,
                position=position_dodge(.9)) 












##Scatterplot
#Correlations and distributions
library(ggplot2)
library(ggpubr)

ggplot(df, aes(x=IQ, y=Circumference)) + 
  geom_point()+geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="pearson")

#add linear model curve and change point format
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(size=3, shape=20)+
  geom_smooth(method=lm, se=TRUE)+
  stat_cor(method="spearman")

#color and shape by group
ggplot(df, aes(x=BMI, y=Height,shape=Sex, color=Financial_status)) + 
  geom_point(size=3)

#size by continuous variable
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(aes(size=IQ))+
  geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="spearman")

#color by continuous variable
ggplot(df, aes(x=BMI, y=Height, color=Circumference)) + 
  geom_point(size=4)+
  geom_smooth(method=lm, se=FALSE,color="black")+
  stat_cor(method="spearman")

#size and color by continuous variable
ggplot(df, aes(x=BMI, y=Height, shape=Sex)) + 
  geom_point()+
  geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="spearman")

#area plot
ggplot(df, aes(x=BMI, y=Height)) + 
  geom_point(aes(size=Circumference))+
  geom_density_2d()
















##Corrplot
install.packages("corrplot")
library(corrplot)
colnames(df)

df[,c(6:8,10,11)] <- lapply(df[,c(6:8,10,11)], function(x) as.numeric(as.character(x)))

matrix<-as.matrix(df[,c(6:8,10,11)])
class(matrix)

res <- cor.mtest(matrix, conf.level = .95)
M <- cor(na.omit(matrix),method="spearman")
par(ps=10)
corrplot(M,type="lower", method = "square",bg="white",
         tl.col = "black",p.mat = res$p, 
         insig = "p-value", sig.level = 0.01)

??corrplot















##Line plot
#Before and after
library(dplyr)
means <- df %>%
  group_by(Financial_status) %>%
  summarise(
    sd = sd(IQ, na.rm = TRUE),
    IQ = mean(IQ))

ggplot(means, aes(Financial_status, IQ, group=1)) +
  geom_line(linetype = "dashed")+
  geom_point()


#Time 
head(economics)
??economics
#uempmed - median duration of unemployment, in weeks
#unemploy - number of unemployed in thousands
#psavert - personal savings rate

ggplot(data=economics, aes(x = date, y = uempmed))+
  geom_line(aes(y = uempmed),color="red")

subset_2006<-subset(economics, date > as.Date("2006-1-1"))
ggplot(data=subset_2006, aes(x = date, y = uempmed))+
  geom_line()

subset_2009<-subset(economics, date > as.Date("2009-1-1"))
ggplot(data=subset_2009, aes(x = date, y = uempmed))+
  geom_line()

ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = psavert), color = "pink3") +
  scale_y_continuous("Personal Savings")

ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = uempmed), color="steelblue3")+
  scale_y_continuous("Unemployment")












#Area plot
data("diamonds")
ggplot(diamonds, aes(price, fill=cut))+geom_bar(stat = "bin",binwidth=300)+
  scale_fill_brewer(palette="Set3") 


??scale_fill_brewer
??diamonds










##Saving figures
#add name, location and dimensions
#saves on working directory -- getwd()

getwd()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/1.png",res=1200,pointsize=10)

ggplot(df,aes(Sex,IQ))+
  geom_boxplot()+theme(axis.title.x = element_text(size=25),
                       axis.title.y = element_text(size=25))
dev.off()
















.
















##table
library(arsenal)
stats  <- tableby.control(test=FALSE, total=FALSE,
                          numeric.stats=c("N", "median", "q1q3"),
                          stats.labels=list(N='Count', median='Median', q1q3='Q1,Q3'))

df_organized <- tableby(Financial_status ~ Height + Weight, data=df,control=stats)
summary(df_organized,text=TRUE)





png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/1.png",res=300,pointsize=10)
ggplot(data=economics, aes(x = date, y = uempmed))+
  geom_line(aes(y = uempmed),color="red")
dev.off()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/2.png",res=300,pointsize=10)
ggplot(subset_2009, aes(x=date)) + 
  geom_line(aes(y = uempmed), color="steelblue3")+
  scale_y_continuous("Unemployment")
dev.off()

png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/3.png",res=300,pointsize=10)
ggplot(df, aes(x=IQ, y=Circumference)) + 
  geom_point()+geom_smooth(method=lm, se=FALSE)+
  stat_cor(method="pearson")
dev.off()


png(height=1000, width=1000, file="/Users/thiagovidotto/Downloads/4.png",res=300,pointsize=10)
ggplot(df, aes(Financial_status, Height))+ggtitle("Financial Status") +
  scale_fill_manual(values=c("dodgerblue","pink2","green2"))+theme_minimal()+
  theme(legend.title=element_blank(),axis.text=element_text(size=10),
        axis.title=element_text(size=10,face="bold"),
        axis.text.x = element_text(angle = 0, hjust = 0))+
  geom_boxplot(aes(fill=Financial_status),outlier.size=0.1)+
  scale_x_discrete(name = "")+scale_y_continuous(name = "Height (m)")+
  stat_compare_means(aes(group = Financial_status), method="kruskal.test",
                     label = "p.signif",hide.ns = FALSE,label.x = 1.9)
dev.off()

