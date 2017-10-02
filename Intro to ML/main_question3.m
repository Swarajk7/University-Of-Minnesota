prior1 = 0.2;
prior2 = 0.8;

% read data: call ReadData
%%%% YOUR CODE STARTS HERE
[xtrain,ytrain,xtest,ytest] = ReadData('training_data.txt','test_data.txt');
%%%

%% Case 1: Independent Covariance

% find parameters: call CalculateMeanIndepCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE
[m1,m2,S1,S2] = CalculateMeanIndepCov(xtrain,ytrain);
%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class
%%%% YOUR CODE STARTS HERE
g1 = CalculateGaussianDiscr(xtest,m1,S1,prior1);
g2 = CalculateGaussianDiscr(xtest,m2,S2,prior2);

%g1 = log(mvnpdf(xtest,m1,S1)) + log(prior1);
%g2 = log(mvnpdf(xtest,m2,S2)) + log(prior2);
%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE
error_rate = CalculateErrorRate(g1,g2,ytest);
%%%%
disp(strcat('Independent Covariance: ', num2str(error_rate,3)));

%% Case 2: Shared Covariance

% find parameters: call CalculateMeanSameCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE
[m1,m2,S] = CalculateMeanSameCov(xtrain,ytrain,prior1,prior2);
%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class

%%%% YOUR CODE STARTS HERE
g1 = CalculateGaussianDiscr(xtest,m1,S,prior1); % - 4*log(2*pi);
g2 = CalculateGaussianDiscr(xtest,m2,S,prior2); % - 4*log(2*pi);

g11 = log(mvnpdf(xtest,m1,S)) + log(prior1);
g21 = log(mvnpdf(xtest,m2,S)) + log(prior2);

%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE
error_rate = CalculateErrorRate(g1,g2,ytest);
%%%%
disp(strcat('Shared Covariance: ', num2str(error_rate,3)));
