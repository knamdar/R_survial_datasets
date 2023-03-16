# Author: Ernest (Khashayar) Namdar
rm(list=ls())
library("survival")
data(cancer, package="survival")
env_objects <- ls()
export <- function(objs){
  for (object in objs) {
    print(object)
    df <- data.frame(get(object))
    #print(df)
    write.csv(df, paste(object, ".csv", sep = ""), row.names = FALSE)
  }
}
export(env_objects)
getwd()