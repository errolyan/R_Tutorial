library(lattice)
histogram(~height | voice.part,data=singer,
         main='D of height by voice',
         xlab='height')