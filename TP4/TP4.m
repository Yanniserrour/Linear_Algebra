% 1. Initialisation
n = input('Entrez la taille de la matrice : '); 
A = zeros(n);
b = zeros(n,1);
x = zeros(n,1);

% 2. Lecture des données
disp('--- Remplissage de la matrice A ---');
for i = 1:n
    for j = 1:n
        A(i,j) = input(['A[', num2str(i), ',', num2str(j), '] = ']);
    end
end

disp('--- Remplissage du vecteur b ---');
for i = 1:n
    b(i) = input(['b[', num2str(i), '] = ']);
end

% 3. Affichage des données saisies
disp('Matrice A :');
disp(A);
disp('Vecteur b :');
disp(b);


det_A = det(A);
if det_A == 0
    disp('Impossible de résoudre le système : le déterminant de A est nul.');
else
    for i = 1:n
        % Créer une copie de A pour ne pas modifier l'originale à chaque boucle
        temp_A = A;
        
        % REMPLACEMENT de la i-ème COLONNE par le vecteur b
        temp_A(:, i) = b; 
        
        % Calcul de l'inconnue x(i)
        x(i) = det(temp_A) / det_A;
    end
    
    % 6. Affichage des solutions
    disp('Les solutions du système sont :');
    for i = 1:n
        fprintf('x%d = %.4f\n', i, x(i));
    end
end