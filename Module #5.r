# Module 5
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

detA <- det(A)

if (detA != 0) {
  invA <- solve(A)
} else {
  invA <- "Matrix has no inverse."
}

print(detA)
print(invA)
