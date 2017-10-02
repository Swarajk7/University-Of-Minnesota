%%
% The CalculateMeanSameCov function finds the mean of each class and
%  shared covariance
%
% The parameters received are:
% - X (n x m): n is the number of samples, and m the number of features
% - y (n x 1): Vector that should contain the labels 1 or 2 for each sample
% - prior1 (1 x 1): Prior for class 1 (between 0 and 1)
% - prior2 (1 x 1): Prior for class 2 (between 0 and 1)
%
% The function should return:
% - m1 (m x 1): Mean for class 1. 
% - m2 (m x 1): Mean for class 2. 
% - S2 (m x m): Shared covariance. 
%
% You should be able to test the function by executing:
% [m1,m2,S] = CalculateMeanSameCov(X_trn, y_trn, 0.9, 0.1)
%
function [m1,m2,S] = CalculateMeanSameCov(X, y, prior1, prior2)
%%%% YOUR CODE STARTS HERE
    X1 = X(y==1,:);
    X2 = X(y==2,:);
    m1 = mean(X1);
    m2 = mean(X2);
    S1 = cov(X1);
    S2 = cov(X2);
    S = S1*prior1 + S2*prior2;
%%%%
end

