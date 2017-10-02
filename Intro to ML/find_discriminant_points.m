function [point1,point2] = find_discriminant_points(m1,s1,m2,s2)
    a = 0.5*((1/s2)^2 - (1/s1)^2);
    b = (m1/s1^2)-(m2/s2^2);
    c = 0.5*((m2/s2)^2 - (m1/s1)^2) + log(s2/s1);
    D = b*b-4*a*c;
    rootD = D^0.5;
    point1 = (-b-rootD)/(2*a);
    point2 = (-b+rootD)/(2*a);
end
