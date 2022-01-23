library(plumber)

#* @apiTitle Flower Species Classification
#* @param petal_length Enter petal length
#* @param petal_width Enter petal width
#* @param sepal_length Enter sepal length
#* @param sepal_width Enter sepal width
#* @post /Classifier

function(petal_length, petal_width, sepal_length, sepal_width){
  
  load("/Users/salahkaf/desktop/model.RData")
  
  test = c(sepal_length, sepal_width, petal_length, petal_width)
  test = sapply(test, as.numeric)
  test = data.frame(matrix(test, ncol = 4))
  
  colnames(test) = colnames(iris[,1:4])
  predict(FlowerSpecies, test)
}