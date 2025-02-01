d <-read.csv("Movie-Ratings.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
View(d)
colnames(d) <- c("Film", "Genre","CriticsRating","AudienceRating","BudgetMillions","Year")

#Critics Ratings on a histogram
library(ggplot2)
ggplot(data = d, aes(x = CriticsRating)) +
    ggtitle("CriticsRating vs Count")+
    geom_histogram(
        binwidth = 10,
        fill = "white",
        colour = "darkblue"
    )
ggplot(data = d, aes(x = AudienceRating)) +
    ggtitle("AudienceRating vs Count")+
    geom_histogram(
        binwidth = 10,
        fill = "white",
        colour = "darkblue"
    )

#CriticsRating vs AudienceRating
ggplot(data = d, aes(x = CriticsRating, y = AudienceRating)) +
    ggtitle("CriticsRating vs AudienceRating")+
    geom_point(
        aes(colour = Genre,
            size = BudgetMillions),
        alpha = 0.5
    )

#CriticsRating vs AudienceRating more solved
ggplot(data = d, aes(x = CriticsRating, y = AudienceRating)) +
    ggtitle("CriticsRating vs AudienceRating")+
    geom_point(
        aes(colour = Genre,
            size = BudgetMillions),
        alpha = 0.7
    )+
    facet_grid(Genre~Year)+
    geom_smooth()


##BudgetMillions vs AudienceRating

ggplot(data = d, aes(x = BudgetMillions, y = AudienceRating)) +
    ggtitle("BudgetMillions vs AudienceRating")+
    geom_point(
        aes(colour = Genre,
            size = BudgetMillions),
        alpha = 0.8
    )

#showing the budget for the Genres
ggplot(data = d, aes(x = BudgetMillions)) +
    ggtitle("BudgetMillions for the Genres")+
    geom_density(
        aes(fill = Genre),
        position = "stack"
    )















