#' Title
#'
#' @param preTrainingPath 
#' @param preTestPath 
#' @param trainingPath 
#' @param testPath 
#' @param delayTrainingTest 
#' @param batchdelay 
#'
#' @return
#' @export
#'
#' @examples
injecTrainingTestFiles <-
  function(preTrainingPath,
           preTestPath,
           trainingPath,
           testPath,
           delayTrainingTest = 5,
           batchdelay = 3) {
    preTrainigPaths <- dir(preTrainingPath, full.names = T)
    preTestPaths <- dir(preTestPath, full.names = T)
    
    batch <- 1
    
    
    for (pathTr in preTrainigPaths) {
      aux <- strsplit(pathTr, "/")[[1]]
      nameTr <- aux[[length(aux)]]
      connPtr <- file(pathTr)
      trainingData <- readLines(connPtr, warn = F)
      trainingFile <- paste0(trainingPath, "/", nameTr)
      connTr <- file(trainingFile)
      writeLines(trainingData, connTr)
      print(paste0("Training ", trainingFile, " injected"))
      
      print(paste0("Esperando ", delayTrainingTest, " segundos"))
      Sys.sleep(delayTrainingTest)
      
      for (pathTs in preTestPaths) {
       
        
        aux <- strsplit(pathTs, "/")[[1]]
        aux1 <- strsplit(aux[length(aux)], ".", fixed = TRUE)
        nameTs <- paste0(aux1[[1]][1], "_", str_pad(batch, 4, pad = "0"), ".", aux1[[1]][2])
        connPts <- file(pathTs)
        testData <- readLines(connPts, warn = F)
        testFile <- paste0(testPath, "/", nameTs)
        connTs <- file(testFile)
        writeLines(testData, connTs)
        print(paste0("Test ", testFile, " injected"))
        close(connPts)
        close(connTs)
        
      }
      
      close(connPtr)
      close(connTr)
      
      if (batch != 1) {
        print(paste0("Esperando ", batchdelay, " segundos"))
        Sys.sleep(batchdelay)
      }
      
      batch <- batch + 1
      
    }
    
    close(connPts)
    close(connTs)
    close(connPtr)
    close(connTr)
    
    
  }