corr <- function(directory, threshold=0) {
  directory=c(getwd())
  CompleteData<-numeric()
  for(i in list.files(directory)){
    filepaths=read.csv(paste(directory,"/",sprintf("%s",i),".csv",sep =""))
    CompleteData<-nrow(filepaths[complete.cases(filepaths),])
    if(CompleteData>threshold){
      CompleteData<-c(CompleteData,cor(filepaths$nitrate,filepaths$sulfate,use="complete.obs"))
    }
    as.numeric(CompleteData)
  }
  return(cr)
} 
