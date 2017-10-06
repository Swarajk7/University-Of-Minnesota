%%
% The CalculateGaussianDiscr function finds the discriminant value for each
% sample x in the test set
%
% The parameters received are:
% - X (n x m): n is the number of samples, and m the number of features
% - m (m x 1): Mean
% - S (m x m): Covariance
% - prior (1 x 1): Prior
%
% The function should return:
% - g (n x 1): Discriminant calculated using m, S and prior for each sample. 
%
% You should be able to test the function by executing:
% g = CalculateGaussianDiscr(X_tst, m1, S1, prior1)
%
function g = CalculateGaussianDiscr(X, m, S, prior)
%%%% YOUR CODE STARTS HERE
    v=size(X);
    n = v(1);
    d = v(2);
    g = zeros(n,1);
    Sinv = inv(S);
    W = -0.5 * Sinv;
    w = Sinv * m;
    w0 = -0.5 * m'*Sinv*m - 0.5*log(det(S)) + log(prior);
    for i=1:n
        x=X(i,:)';
        g(i,1) = x'*W*x + w'*x + w0;
    end   
%%%%
end

