x=input("Enter the elements of matrix A: ")
disp(x,"The coefficients of matrix A are")

s=x(2,1)/x(1,1)
r=x(3,1)/x(1,1)

for i=1:3
    x(2,i)=x(2,i)-s*x(1,i)
    x(3,i)=x(3,i)-r*x(1,i)
end

t=x(3,2)/x(2,2)

for j=1:3
    x(3,j)=x(3,j)-t*x(2,j)
end

u=x
l=[1 0 0;s 1 0;r t 1]
disp(u,"Upper triangular matrix")
disp(l,"Lower triangular matrix")
