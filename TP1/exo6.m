%Matrice A
n_A = input('saisir le nombre de lignes de A : ');
m_A = input('saisir le nombre de colonnes de A :');
A = zeros(n_A,m_A);
disp('entrez les éléments de la metrice A '); 
for i =1:n_A
    for j=1:m_A
        A(i,j) = input(['A[',num2str(i),',',num2str(j),']= ']);
    end
end

%Matrice B
n_B = input('saisir le nombre de lignes de B : ');
m_B = input('saisir le nombre de colonnes de B :');
B = zeros(n_B,m_B);
disp('entrez les éléments de la metrice B '); 
for i =1:n_B
    for j=1:m_B
        B(i,j) = input(['A[',num2str(i),',',num2str(j),']= ']);
    end
end

%Affichage des deux matrices A et B
disp('afficher A');
disp(A); 
disp('afficher B');
disp(B);

%verifier la compatibilité
if m_A ~= n_B 
    disp('les matrices ne sont pas compatibles :');
else 
    C = zeros(n_A,m_B);
    for i=1:n_A
        for j=1:m_B
            for k=1:m_A
                C(i,j) = C(i,j) + A(i,k)*B(k,j);
            end
        end
    end
    disp('A X B = ');
    disp(C);     
end
