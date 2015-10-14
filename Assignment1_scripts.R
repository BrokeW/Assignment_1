#define a function called "divisiable.by" to test whether the first
#numerical character can be divided by the second one
divisible.by <- function (x,y) (
  if (x%%y == 0) {
    return("TRUE")
    } 
  else {
    return("FALSE")
  }
)

#define a function called "divisible.within.range" to test three numerical
#characters x, y, and z, which will return a list that all numbers between
#x and y (inclusive) that are divisible by z
divisible.within.range <- function (x,y,z) {
#first assign the upper boudary a
  a <- ((x%/%z)+1) * z
  b <- (y%/%z) * z
#the lower boundary depends on the reletive relationship between x and z
  if (z >= x) {
    return(seq(z,b,by=z))
   }
  else {
    if (x%%z==0) {
      return(seq(x,b,by=z))
    }
    else {
      return(seq(a,b,by=z))
    }
  }
}

#taking the commandline arguments as input
args <- commandArgs(trailingOnly = TRUE)
#transfer them to numerical characters
x <- as.numeric(args[1])
y <- as.numeric(args[2])
z <- as.numeric(args[3])

#apply the input to the function "divisible.within.range" and print the output
divisible.within.range(x,y,z)