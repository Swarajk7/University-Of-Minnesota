%%
% The ReadData function should read the data used in the assignment
%
% The parameters received are:
% - training_filename: string containing the training data file path
% - test_filename: string containing the test data file path
%
% The function should return:
% - X_trn (n_trn x m): Training datapoints matrix, where n_trn is the 
% number of training data points, and m is the number of features
% - y_trn (n_trn x 1): Vector that should contain the labels of the 
% training_filename file (last column)
% - X_tst (n_tst x m): Test datapoints matrix, where n_tst is the number of 
% test data points, and m is the number of features
% - y_tst (n_tst x 1) Vector that should contain the labels of the 
% test_filename file (last column)
%
% You should be able to test the function by executing:
% [X_trn, y_trn, X_tst, y_tst] = ReadData('training_data.txt', 'test_data.txt');
%
function [X_trn, y_trn, X_tst, y_tst] = ReadData(training_filename, test_filename)
%%%% YOUR CODE STARTS HERE
    train = csvread(training_filename);
    test = csvread(test_filename);
    X_trn = train(:,1:8);
    y_trn = train(:,9);
    X_tst = test(:,1:8);
    y_tst = test(:,9);
%%%%
end

