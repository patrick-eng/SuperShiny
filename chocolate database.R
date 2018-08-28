## create variables along 1-100 vectors
person_id <- c(1:100)
chocolate_buttons <- c(1:100)

## generate and add some random noise for the dependent variables
happiness <- jitter(c(1:100), factor=100)
sugar_rush <- jitter(c(1:100), factor=150)
health_perception <- jitter(c(100:1), factor=200)

## create data frame from vectors
chocolate <- as.data.frame(cbind(person_id, chocolate_buttons, happiness, sugar_rush, health_perception))

## restrict values to between 0 and 100
chocolate[chocolate>100]<-100
chocolate[chocolate<0]<-0


qqnorm(health_perception);qqline(health_perception, col=2)
