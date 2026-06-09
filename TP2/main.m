n = input('entrez la taille de la matrice : ');
A = zeros(n);
for i=1:n
    for j=1:n
        A(i,j) = input(['A[',num2str(i),',',num2str(j),']= ']);
    end
end

disp('la Matrice entrer ');
disp(A);

%calcule du déterminant fonction creé
d1=Determinant(A);
disp(['le determinant de A est : ',num2str(d1)]);

%calcule du déterminant fonction predef
d2 = det(A);
disp(['le determinant predef de A est : ',num2str(d2)]);







