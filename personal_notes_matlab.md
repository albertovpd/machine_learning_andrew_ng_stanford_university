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
- Cost function and gradient. 

$J(\theta)=\sum_{i=1}^{m}(-y^i log(h_θ(x^i))-(1-y^i)log(1-h_θ(x^i)))$

$\delta J(θ)/δθ_j=1/m \sum_{i=1}^{m}(h_θ(x^i)-y^i)x_j ^i$ 

        function [J, grad] = costFunction(theta, X, y)
        m = length(y); % number of training examples
        J = 0;
        grad = zeros(size(theta));

        %need to work a little bit on this

# Multi-class Classification and Neural Networks

- Vectorizing regularized cost function

For logistic regression: $J(\theta)=\sum_{i=1}^{m}(-y^i log(h_θ(x^i))-(1-y^i)log(1-h_θ(x^i)))$

To compute each elementin the summation, we have to compute $h_θ(x^i)$, $∀i$ where $h_θ(x^i)=g(θ^T x^i)$; $g(z)=1/(1+e^{-z})$

If we want to regularize the expression:

$J(θ) = (1/m) ∑_{i=i}^{m} [-y^i log(h_θ(x^i))-(1-y^i)log(1-h_θ(x^i))]+(λ/2m)∑_{j=i}^m θ_j ^2$. $θ_0$ not to be regularized.

        function [J, grad] = lrCostFunction(theta, X, y, lambda)
       
        % Initialize some useful values
        m = length(y); % number of training examples

        J = 0;
        grad = zeros(size(theta));
        h_theta = sigmoid(X * theta);

        J = (1/m) * (((-1 * y') * log(h_theta)) - ((1-y') * log(1-h_theta))) + (lambda/(2*m)) * (sum(theta(2:end) .^ 2));
        %theta(2:end) returns the elments from the 2nd to the last column
        

- Regularized Vectorized gradient.

 $\delta J(θ)/δθ_j=1/m \sum_{i=1}^{m}(h_θ(x^i)-y^i)x_j ^i$.
 Defining $β^i≡(h_θ(x^i)-y^i)$, which is an scalar $\sum_{i}β_i x^i=X^T β→ \delta J(θ)/δθ_j=(1/m)X^Tβ$.

 Very interesting, but if regularizing:  
 
$δJ(θ)/δθ_0= (1/m) \sum_{i=1}^{m}β^ix^i$

$δJ(θ)/δθ_j= (1/m) \sum_{i=1}^{m}β^ix^i+(λ/m)θ_j  for  j >=1$
 

        temp = theta;
        temp(1) = 0;
        grad = ((1 / m) * X' * (h_theta - y)) + (lambda / m) * temp;
        grad = grad(:);
        


# Matlab stuff

- [dummy,idx]=min(dists);

For this example, the code wants to work with the index of the minimum value, not the value itself, so the minimum value that is returned is discarded and only the index is retained.
http://www.mathworks.com/help/matlab/matlab_prog/ignore-function-outputs.html?searchHighlight=tilde

- Comparing vectors

Logical arrays in Octave/MATLAB are arrays
which contain binary (0 or 1) elements. In Octave/MATLAB, evaluating
the expression a == b for a vector a (of size m×1) and scalar b will return
a vector of the same size as a with ones at positions where the elements
of a are equal to b and zeroes where they are different.
