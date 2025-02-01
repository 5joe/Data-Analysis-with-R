a <- read.csv("DemographicData.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
a
View(a)

#Compare Birth.rate to Internet.users
library(ggplot2)
b <- ggplot(data = a, aes(x = Birth.rate, y = Internet.users)) + 
    ggtitle("Birth Rate vs Internet Users")
b + geom_point(
    aes(color = Income.Group)
)

 





