#analysis of drought
setwd("p:/R_Programming/Assignment_7")

ear_length<- read.csv("./Data/houseelf_earlength_dna_data.csv", header=TRUE)

file.rename(from = "./Data/houseelf_earlength_dna_data.csv", to= "./Data/houseelf_earlength_dna_data_1.csv")

ear_length_1<- read.csv("./Data/houseelf_earlength_dna_data_1.csv", header=TRUE)

library(stringr)


GC_cont<-function(GCs){
  vec<- c(el)
  gc_content<- (str_count(vec, "G"))+(str_count(vec, "C"))/(str_count(vec))
    return(gc_content)
}

GC_cont(ear_length_1$dnaseq)
