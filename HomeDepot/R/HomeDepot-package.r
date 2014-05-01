#' HomeDepot.
#'
#' @name HomeDepot
#' @docType package
HDConnect <- function () {
  library(RODBC)
  #Calling ODBC
  database<<-readline("database (eg.IBM_PR1): ")  
  userID<<-readline("enter user ID: ")
  password<<-readline("password: ")
  ConnectionName<<-odbcConnect(database,uid = userID, pwd = password)
  query<<-c(readline("paste SQL query: "))
  results<<-sqlQuery(ConnectionName, paste(query))
  head(results, 20)
  close(ConnectionName)
  #2012-01-18 Gene K & Jamall Winn
}
if(interactive()) HDConnect()