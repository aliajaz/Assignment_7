#analysis of drought
setwd("p:/R_Programming/Assignment_7")

<<<<<<< HEAD
setwd("p:/R_Programming/Assignment_7")

=======
>>>>>>> ffffd1e2051c17fe9bac7534caa1ebb9c87ead15
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

<<<<<<< HEAD
sdsd<-ds




=======
get_size_class <- function(ear_length){
   # Calculate the size class for one or more ear lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
>>>>>>> ffffd1e2051c17fe9bac7534caa1ebb9c87ead15

get_size_class(ear_length_1)

library(stringr)
library(dplyr)

get_size_class_2 <- function(ear_length){
  ears<-c(select(ear_length, earlength))
  ear_lengths <- ifelse(ears$earlength > 10, "large", "small")
  dna<-c(select(ear_length, dnaseq))
  gc_content<-((str_count(dna$dnaseq, "G"))+(str_count(dna$dnaseq, "C"))/(str_count(dna$dnaseq)))
  id_2<-c(select(ear_length, id))
  id<-str_dup(id_2$id,1)
  return(cbind.data.frame(id, ear_lengths, gc_content))
}

out_put1<-get_size_class_2(ear_length_1)

write.csv(out_put1,file="p:/R_Programming/Assignment_7/out_put.csv")


