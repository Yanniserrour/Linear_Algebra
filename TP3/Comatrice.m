function COMA = Comatrice(A)
    [n, ~] = size(A);
    COMA = zeros(n);
    for i = 1:n 
        for j = 1:n 
            temp_A = A;
            temp_A(i,:) = []; 
            temp_A(:,j) = []; 
            COMA(i,j) = (-1)^(i+j) * det(temp_A);
        end
    end
end