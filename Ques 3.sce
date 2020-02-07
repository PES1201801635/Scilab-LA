x=input("Enter the coefficients of the equations: ")
disp(x,"The coefficients are ")

[m,n]=size(x)

for j=1:m-1
    for z=2:m
        if x(j,j)==0
            t=x(j,:)
            x(j,:)=x(z,:)
            x(z,:)=t
        end
    end
    for i=j+1:m
    x(i,:)=x(i,:)-x(j,:)*(x(i,j)/x(j,j))
end
end

for j=m:-1:2
    for i=j-1:-1:1
        x(i,:)=x(i,:)-x(j,:)*(x(i,j)/x(j,j))
    end
end

for s=1:m
    x(s,:)=x(s,:)/x(s,s)
    y(s)=x(s,n)
end

disp("Gauss-Jordan method of calculating A^(-1)")
disp(x,"x:")
disp(y',"ans:")
