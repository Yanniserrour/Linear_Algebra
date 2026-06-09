%creation de V1
V1 = linspace(2,3,5)';
disp('V1 = ');
disp(V1);

%ajouter des lignes nulles a la fin de V1
V1=[V1;0;0];
disp('V1 = ');
disp(V1);

%ajouter 1 au 2 eme et 6eme élément
V1([2 6]) =V1([2 6]) +1 ;
disp('V1 =');
disp(V1);

%creation de V2
n = length(V1);
V2= (6 : 2 : 6+2*(n-1))';
disp('V2= ');
disp(V2);


%la somme S et le produit TaT P
s = V1 + V2;
disp('s= ');
disp(s);
p = V1 .* V2;
disp('p= ');
disp(p);

%la somme des elets de p et la moyennes des elts de s
somme_p = sum(p); moy_s = mean(s);
disp(['la sommes des elets de p est : ',num2str(somme_p)]);
disp(['la moyennes des elets de s : ',num2str(moy_s)]);

%le plus grands elets de p et le plus petit elets de S 
max_p = max(p); min_s = min(s); 
disp(['le plus grands elets de p est : ',num2str(max_p)]);
disp(['le plus petit elets de s est : ',num2str(min_s)]);

%Trier les éléments de S par ordre croissant et les éléments de p en
%decroisant
s = sort(s);
p = sort(p, 'descend'); 

disp(s);
disp(p);















