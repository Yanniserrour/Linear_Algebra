% Initialisation
n = input('entrer la taille de la matrice : ');
A = zeros(n);
b = zeros(n,1);
y = zeros(n,1);
x = zeros(n,1);
U = zeros(n);
L = eye(n); % L est unitaire (diagonale de 1) [cite: 81, 101]

% Lire les données 
disp('entrer la matrice ');
for i=1:n
    for j=1:n
        A(i,j) = input(['A[',num2str(i),',',num2str(j),']= ']);
    end
end
disp('entrer le vecteur b');
for i=1:n
    b(i) = input(['b[',num2str(i),']= ']);
end

% Factorisation LU (Méthode de Doolittle) [cite: 81, 91, 93]
for i=1:n
    % Calcul des coefficients de U (ligne par ligne) [cite: 102]
    for j=i:n
        s = 0;
        for k=1:i-1
            s = s + L(i,k)*U(k,j);
        end
        U(i,j) = A(i,j) - s;
    end
    % Calcul des coefficients de L (colonne par colonne) [cite: 103]
    for j = i + 1 : n 
        s = 0; 
        for k = 1 : i-1
            s = s + L(j,k)*U(k,i);
        end
        L(j,i) = (A(j,i) - s) / U(i,i);
    end
end

% Afficher L et U
disp('Matrice L :'); disp(L);
disp('Matrice U :'); disp(U);

% 1. Résolution de Ly = b (Substitution avant) 
y(1) = b(1) / L(1,1);
for i = 2 : n 
    s = 0;
    for j = 1 : i - 1 % Correction de la boucle
        s = s + L(i,j) * y(j);
    end
    y(i) = (b(i) - s) / L(i,i);
end

% 2. Résolution de Ux = y (Substitution arrière) 
x(n) = y(n) / U(n,n);
for i = n-1 : -1 : 1 % Correction du pas négatif
    s = 0;
    for j = i+1 : n 
        s = s + U(i,j) * x(j);
    end
    x(i) = (y(i) - s) / U(i,i);
end

% Afficher la solution 
disp('La solution x est : ');
disp(x);