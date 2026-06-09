%init
n = input('entrer lordre de la matrice : '); 
A = zeros(n);
b = zeros(n,1);
x = zeros(n,1);

%lire les données
disp('remplir la matrice');
for i=1:n
    for j=1:n
        A(i,j) = input(['A[',num2str(i),',',num2str(j),']=']);
    end
end
disp('remplir le vecteur');
for i=1:n 
    b(i) = input(['b[',num2str(i),']=']);
end
Aa = [A b];

%afficher les données
disp('la matrice entrer est : ');
disp(A); 
disp('le vecteur entrer est : ');
disp(b);

%resolution a travers la méthode de gauss sans échange 
for k = 1 : n-1 
    for i = k + 1 : n 
        mu = A(i,k) / A(k,k);
        for j = k:n+1
            A(i,j) = A(i,j) - mu*A(k,j);
        end
        b(i) = b(i) -mu*b(k);
    end
end
disp('la matrice triangulaire obtenue est : '); 
disp(A);

%substitution arrieré 
x(n) = b(n)/ A(n,n) ;
for i = n-1 : -1 : 1
    temp = 0;
    for j = i + 1 : n
        temp = temp + A(i,j) * x(j);
    end
    x(i) = (b(i) - temp)/A(i,i);
end

%afficher la solution 
disp('la solution est : ');
disp(x);







