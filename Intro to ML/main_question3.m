prior1 = 0.2;
prior2 = 0.8;

% read data: call ReadData
%%%% YOUR CODE STARTS HERE

%%%

%% Case 1: Independent Covariance

% find parameters: call CalculateMeanIndepCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE

%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class
%%%% YOUR CODE STARTS HERE

%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE

%%%%
disp(strcat('Independent Covariance: ', num2str(error_rate,3)));

%% Case 2: Shared Covariance

% find parameters: call CalculateMeanSameCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE

%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class
%%%% YOUR CODE STARTS HERE

%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE

%%%%
disp(strcat('Shared Covariance: ', num2str(error_rate,3)));
