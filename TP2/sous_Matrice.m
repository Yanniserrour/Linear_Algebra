function M = sous_Matrice(A,i,j)
    M=A;
    M(i,:) = [];
    M(:,j) = [];
end