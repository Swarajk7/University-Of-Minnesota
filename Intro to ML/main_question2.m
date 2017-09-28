m1=3.0;
m2=2.0;
s1=1.0;
s2=0.3;

% generate random N data points
N=15; 
x1=zeros(N,1); %p(x|C1)
x2=zeros(N,1); %p(X|C2)
for i=1:N
    z=sum(rand(12,1))-6;  
    x1(i)=z*s1+m1; 
    z=sum(rand(12,1))-6;  
    x2(i)=z*s2+m2;     
end

% estimate parameters from data
%%%% YOUR CODE STARTS HERE

%%%%

% calculate actual discriminant points
%%%% YOUR CODE STARTS HERE

%%%%
fprintf('Actual intersect pts: %4.2f %4.2f\n', pt1, pt2);

% calculate estimated discriminant points
%%%% YOUR CODE STARTS HERE

%%%%
fprintf('Estimated intersect pts: %4.2f %4.2f\n', pt1, pt2);