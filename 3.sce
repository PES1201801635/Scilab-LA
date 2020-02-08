A = input("Enter the elements of matrix A: ")
disp(A,"The coefficients of matrix A are ")

n = length(A(1,:))
AUG = [A,eye(n,n)]

for j = 1:n-1
    for i = j+1:n
        AUG(i,j:2*n) = AUG(i,j:2*n)-AUG(i,j)/AUG(j,j)*AUG(j,j:2*n)
    end 
end

for j = n:-1:2
    AUG(1:j-1,:) = AUG(1:j-1,:)-AUG(1:j-1,j)/AUG(j,j)*AUG(j,:)
end

for j = 1:n
    AUG(j,:) = AUG(j,:)/AUG(j,j)
end

B = AUG(:,n+1:2*n)
disp(B,"The inverse of A: ")
