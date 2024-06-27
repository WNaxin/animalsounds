## code to prepare `farm_animals` dataset goes here

animals <- c("dog","cat","elepphant")
sounds <- c("woof","miaow","eeeeee")

farm_animals <- data.frame(animal = animals, sound = sounds)


usethis::use_data(farm_animals, overwrite = TRUE)



