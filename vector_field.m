function dx_dt = vector_field(a, b, c)
    % Define the state vector
    X = zeros(3, 1);
    A = [0, -1, 1; 1, 0, -1; -1, 1, 0];
    %A=  [0, 0, 0; 0, 0, 0; 0, 0, 1];
    
    % Substitute the values a, b, and c into the state vector X
    X(1) = a;
    X(2) = b;
    X(3) = c;
    
    % Calculate xtAx_matrix
    xtAx_matrix = X' * A * X;
    Ax = A * X;
    
    t = (Ax - xtAx_matrix * [1; 1; 1]);
    
    % Calculate the system of differential equations in matrix form
    for i = 1:3
        dx_dt(i) = X(i) * t(i); 
    end
end
