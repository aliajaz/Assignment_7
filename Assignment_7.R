#analysis of drought
setwd("p:/R_Programming/Assignment_7")

ear_length<- read.csv("./Data/houseelf_earlength_dna_data.csv", header=TRUE)

file.rename(from = "./Data/houseelf_earlength_dna_data.csv", to= "./Data/houseelf_earlength_dna_data_1.csv")

ear_length_1<- read.csv("./Data/houseelf_earlength_dna_data_1.csv", header=TRUE)

library(stringr)


GC_cont<-function(GCs){
  Up<-str_to_upper(GCs)
  gc_content<- (str_count(Up, "G"))+(str_count(Up, "C"))/(str_count(Up))
    return(c(gc_content))
}


ear_l<-as.vector(ear_length_1$dnaseq)


GC_cont(ear_l)

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
