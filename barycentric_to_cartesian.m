 function new_coordinates = barycentric_to_cartesian(barycentric_coords)
    % Extract the vertices of the reference triangle
    x1 =0;
    y1 = 0;
    x2 = 1;
    y2 = 0;
    x3 = 1/2;
    y3 = sqrt(3)/2;

    % Calculate the Cartesian coordinates
    x = barycentric_coords(1) * x1 + barycentric_coords(2) * x2 + barycentric_coords(3) * x3;
    y = barycentric_coords(1) * y1 + barycentric_coords(2) * y2 + barycentric_coords(3) * y3;

    new_coordinates = [x, y];
end
