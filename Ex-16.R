m1 = matrix(1:20, nrow=5, ncol=4)
print("5 × 4 matrix:")
print(m1)

m1 = matrix(1:9, nrow=3, ncol=3)
print("3 × 3 matrix:")
rnames = c("x", "y", "z")
cnames = c("a","b","c")
matrix = matrix(m1, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print(matrix)

m1 = matrix(c(6,7,8,2), nrow=2, ncol=2)
print("2 × 2 matrix:")
rnames = c("x", "y")
cnames = c("a","b")
matrix = matrix(m1, nrow=2, ncol=2, dimnames=list(rnames, cnames))
print(matrix)
