install.packages("tidyverse")
library(tidyverse)
df=read_csv("UPI apps transaction data in 2021.csv")
summary(df)
nrow(df)
sum(df$`Volume (Mn) By Costumers`)
sum(df$`Value (Cr) by Costumers`)

install.packages("tidyverse")
library(tidyverse)
df1=read_csv("UPI apps transaction data in 2021.csv")
df2=read_csv("UPI apps transaction data in 2022 - - in 2022.csv.csv")
#df <- list.files(path='/files') %>% 
#  lapply(read_csv) %>% 
#  bind_rows
df3=rbind(df1, df2)

summary(df3)
nrow(df3)
sum(df3$`Volume (Mn) By Costumers`)
sum(df3$`Value (Cr) by Costumers`)

avg_tr=sum(df3$`Value (Cr) by Costumers`)/sum(df3$`Volume (Mn) By Costumers`)
df4 = df3 %>%
  group_by(df3$`UPI Banks`) %>%
  summarise(vol_bank = min(`Volume (Mn) By Costumers`))
view(df4)
df5 = df3 %>%
  group_by(df3$`UPI Banks`) %>%
  summarise(value_bank = min(`Value (Cr) by Costumers`))
view(df5)
factor(df3$`UPI Banks`)

range(df3$`UPI Banks`)
factor(df3$`UPI Banks`)
#repeat for all the months
df6=df1[df1$Month==10,]
summary(df6)
df6=df1[df1$Month==11,]
summary(df6)
df6=df1[df1$Month==12,]
summary(df6)
factor(df1$`UPI Banks`)
factor(df2$`UPI Banks`)
df7 = df1 %>%
group_by(df1$`UPI Banks`) %>%
summarise(vol_bank = min(`Volume (Mn) By Costumers`))
df8 = df2 %>%
group_by(df2$`UPI Banks`) %>%
summarise(vol_bank = min(`Volume (Mn) By Costumers`))
intersect(df7$`df1$\`UPI Banks\``,df8$`df2$\`UPI Banks\``)
colnames(df7)[1] ="upi"
colnames(df8)[1] ="upi"
df9=inner_join(df7, df8,by = "upi")
l=list(df6$upi)
for (x in df4$upi) {
  ifelse(str_detect(l,x),print(1),print(x))
}

