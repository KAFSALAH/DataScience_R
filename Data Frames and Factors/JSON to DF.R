library("rjson")
result <- fromJSON(file = "/Users/salahkaf/Downloads/sample2.json")
json_df <- as.data.frame(result)
json_df