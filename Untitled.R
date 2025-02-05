library(pracma)
A <- matrix(c(3, 1, 4, -11,
              -2, -2, -2, 2,
              0, -6, 3, -24,
              2, 0, 3, -5), 
            nrow = 8, byrow = TRUE)
rref_A <- rref(A)
print(rref_A)
print(A)