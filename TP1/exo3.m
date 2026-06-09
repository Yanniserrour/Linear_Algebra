n = input('veuillez donner la taille du vecteur : ');
V = zeros(1,n);

for i=1:n
    V(i)=i;
end

disp('Le vecteur complet V est :');
disp(V);
taille = length(V);
disp(['la taille du vecteur est : ',num2str(taille)]);
X = [V(1:5), V(end-4:end)];

disp('Le vecteur des 5 premiers et 5 derniers éléments est :');
disp(X);