%%
% The CalculateErrorRate function calculates the error rate using the
% discriminant values
%
% The parameters received are:
% - g1 (n x 1): Discriminant for class 1, where n is the number of samples
% in the test set.
% - g2 (n x 1): Discriminant for class 2
% - y_tst (n x 1): Vector that should contain the true labels 1 or 2 for
% each sample in the test set.
%
% The function should return:
% - error_rate (1 x 1): The error rate, between 0 and 1
%
% You should be able to test the function by executing:
% error_rate = CalculateErrorRate(g1, g2, y_tst)
%
function error_rate = CalculateErrorRate(g1, g2, y_tst)
%%%% YOUR CODE STARTS HERE
    predicted = (g1<=g2) + 1; %if g2 is large class should be classified as 2 or 1 otherwise.
    error_rate = sum(predicted ~= y_tst)/length(y_tst);
%%%%
end

