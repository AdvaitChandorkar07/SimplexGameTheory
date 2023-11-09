function new_coordinates = cartesian_to_barycentric(x_old)
    x1 = 0;
    y1 = 0;
    x2 = 1;
    y2 = 0;
    x3 = 0;
    y3 = 1;

    % Calculate the determinant of the transformation matrix T
    det_T = (y2 - y3) * (x1 - x3) + (x3 - x2) * (y1 - y3);

    % Calculate the barycentric coordinates
    lambda1 = ((y2 - y3) * (x_old(1) - x3) + (x3 - x2) * (x_old(2) - y3)) / det_T;
    lambda2 = ((y3 - y1) * (x_old(1) - x3) + (x1 - x3) * (x_old(2) - y3)) / det_T;
    lambda3 = 1 - lambda1 - lambda2;

    new_coordinates = [lambda1; lambda2; lambda3];
end
