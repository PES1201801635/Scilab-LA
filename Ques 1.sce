x=input("Enter the coefficients of the equations: ")
disp(x,"The coefficients are")

[m,n]=size(x)

for j=1:m-1
    for z=2:m
        if x(j,j)==0
            t=x(j,:)
            x(j,:)=x(z,:)
            x(z,:)=t
        end
    end
end

y=zeroes(1,m)

for s=m:-1:1
    c=0;
    for k=2:m
        c=c+x(s,k)*y(k)
    end
    y(s)=(x(s,n)-c)/x(s,s)
end

display("Gaussian Elimination method")
disp(x,"x: ")
disp(y',"Ans: ")
