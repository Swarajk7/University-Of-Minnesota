m1=3.0;
m2=2.0;
s1=1.0;
s2=0.3;

% generate random N data points
N=15; 
x1=zeros(N,1); 
x2=zeros(N,1);
for i=1:N
    z=sum(rand(12,1))-6;  
    x1(i)=z*s1+m1; 
    z=sum(rand(12,1))-6;  
    x2(i)=z*s2+m2;     
end

% estimate parameters from data
%%%% YOUR CODE STARTS HERE
estimated_mean_x1 = mean(x1);
estimated_var_x1 = std(x1);

estimated_mean_x2 = mean(x2);
estimated_var_x2 = std(x2);
%%%%

% calculate actual discriminant points
%%%% YOUR CODE STARTS HERE
%it takes the form of ax^2+bx+c=0, so we need to calculate a,b,c 
%and then find solutions to the equation
[pt1,pt2]=find_discriminant_points(m1,s1,m2,s2);
%%%%
fprintf('Actual intersect pts: %4.2f %4.2f\n', pt1, pt2);
% calculate estimated discriminant points
%%%% YOUR CODE STARTS HERE
[pt1,pt2]=find_discriminant_points(estimated_mean_x1,estimated_var_x1,estimated_mean_x2,estimated_var_x2);
%%%%
fprintf('Estimated intersect pts: %4.2f %4.2f\n', pt1, pt2);