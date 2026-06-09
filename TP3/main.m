n = input('entrez la taille de la matrice : '); 

% Initialisation
A = zeros(n);
b = zeros(n, 1);

% Lire les données 
disp('Entrez les éléments de la matrice :'); 
for i = 1:n 
    for j = 1:n 
         A(i,j) = input(['A[',num2str(i),',',num2str(j),'] = ']);
    end
end

disp('Entrez les éléments du vecteur b :');
for i = 1:n 
    b(i) = input(['b[',num2str(i),'] = ']); 
end

% Afficher les données
disp('La matrice entrée :'); 
disp(A); 
disp('Le vecteur b :');
disp(b);

if det(A) == 0 
    disp('Impossible, pour plus de rensengement consultez le cours ');
else 
    % Calcul de l'inverse par la comatrice
    COMT = Comatrice(A)'; % Transposée de la comatrice
    INVA = (1/det(A)) * COMT;
    
    x = INVA * b; 
    
    disp('La solution du système est :');
    disp(x); 
end

