library(httr)

url <- "https://ww8.ikea.com/ext/iplugins/en_US/data/local-stores/data.json"
res = GET(url)
res_json = content(res)
do.call(rbind,res_json)
View(data.frame(do.call(rbind,res_json)))
