%creation de la matrice A
n = 5; 
A = 2*diag(ones(n,1)) -diag(ones(n-1,1),1) -diag(ones(n-1,1),-1);
disp(A);

%extraire de A les deux premiere colonnes 
A_c = A(:,1:2);

%extraire de A
A_b = A(2:4,2:4);
disp(A_b);

%Construire la matrice B tq:
B=A;
 %la ligne 1 soit echanger avec la lignes 3 : 
 B([1 3],:) = B([3 1],:);
 %le colonne 2 soit remplacée par la colonne 4: 
 B(:,2) = B(:,4);

%la matrice Triang inf de B
L = tril(B);
%la matrice Triang sup de B
U = triu(B);

disp(L);
disp(U);

%transposé et l'inverce la B
B_trans = B'; 
B_inv = inv(B);

disp(B_trans);
disp(B_inv);

 
 
