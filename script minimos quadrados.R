#############################
#   estimativa por MQO      #
#############################

# 1x -1y = 4
# 3x +2y = 1
# -2x +4y = 3


A <- matrix(c(1,3,-2,-1,2,4),nrow=3,ncol=2,byrow=FALSE)
print(A)

B <- matrix(c(4,1,3),nrow=3,ncol=1,byrow=FALSE)
print(B)

#Transposta de A

At<- t(A)
At

# Multiplicação A transposta pela Matrix A

AtA<- At%*%A
AtA

#Inversa da matriz AtA

inv <- solve(AtA)
inv

#Multiplicação Transposta de A pela Matrix B
AtB <- At %*% B
AtB

# Vetor X
x <- inv %*% AtB
x

#Vetor erro
# B - Ax = e 

e <- B - (A%*%x)
e

#erro
erro<- norm(e, type="2")
erro

