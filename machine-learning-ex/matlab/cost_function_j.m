function J = costFunctionJ(X,y,theta):

% X == design matrix containing training examples
% y == class labels

m = size (X,1);  % number of training examples
predictions = X*theta;  % predictions of hypothesis on all m examples
sqrtErrors = ( predictions - y ).^2; % squared errors value by value

J = 1/(2*m)*sum(sqrtErrors);
