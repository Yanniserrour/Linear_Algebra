function d = Determinant(A)
    [n,m]= size(A);
    
    if     n == 1 
       d = A(1,1);
    elseif n == 2
       d = A(1,1)*A(2,2) - A(1,2)*A(2,1);
    else
       d = 0;
       for j = 1 : n
           d = d + (-1)^(1+j)*A(1,j)*Determinant(sous_Matrice(A,1,j));
       end
    end
end
