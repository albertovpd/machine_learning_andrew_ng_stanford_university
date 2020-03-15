# PERSONAL MATLAB NOTES 

- This are not meant to be public useful notes.

-----------------------------------------------

# Linear regression

- Cost Function for linear regression: $J(\theta)= 1/(2m) \sum_{i=1}^{m} ( h_\theta(x^i)- y^i)²$, where $h_\theta=\theta^Tx=\theta_0 + \theta_1 +x_1$

        % X and Y are vectors, so we need the "."
        function J = computeCost(X, y, theta)
        J=0;
        J = 1/(2*m)* sum((X*theta - y).^2);

- Gradient descent: $\theta_j:=\theta_j - \alpha (1/m) \sum_{i=1}^{m}( h_\theta(x^i)- y^i)x_j ^i$

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
        %GRADIENTDESCENT Performs gradient descent to learn theta
        %   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
        %   taking num_iters gradient steps with learning rate alpha

        % Initialize some useful values
        m = length(y); % number of training examples
        J_history = zeros(num_iters, 1);

        for iter = 1:num_iters
                algor = X' * (X * theta - y);
                theta = theta - alpha * (1/m) * algor;
        % Save the cost J in every iteration    
        J_history(iter) = computeCost(X, y, theta);
        end
        end

# Logistic regression (classification)

- Sigmoid function: $h_\theta=g(\theta ^T x)$ ; $g(z)=1 / (1+e^ {-z})$

        function g = sigmoid(z)
        g = zeros(size(z));
        %the vectorizing point. important stuff
        g = 1./(1 + exp(-1*z));
        end






      