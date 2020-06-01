% BASICS

% SCALAR STRUCTURE

% disp('scalar structure. the same variable can contain different types')
x.a="name";
x.b=23;
x.c=[1,2,3;3,3,5];

x;

% GLOBAL VARIABLES

% are very used to work with differential equations, they can
% constants out of the gradient processing

global x % x global so we dont need to declare it in the function parameter

function demo()
  x=3;
endfunction



% FUNCTIONS WITH MULTIPLE RETURNS

% function [ret-list]= name_function(arg_list)
%   body
% endfunction



% OPERATORS

% dot for transposing

% COMPARISING
%   x==y =1 <=> a=b
%   x~=y | x!=y returns a logical array with elements set to logical 1 
%     ( true ) where arrays A and B are not equal; otherwise, the element is 
%     logical 0 (false )



% BOOLEANS

%   a & b == and
%   a | b == or
%   !a    == like not
a=0;
b=1;

disp('and operator:')
a&b
disp('or operator:')
a|b



% INCREMENT / DECREMENT OPERATORS

% ++x and x++ is not the same. ++x increments the variable x. x++ causes the 
% variable x to be incremented. the value of the expression is the old value
% of x.

% STATEMENTS (like functions, you must end them)
x=10
% if
if rem(x,2)==0
  disp('x is even')
else
  disp('x is odd')
endif

% switch
% like a higher if

% switch expression
%   case label 1
%   commands 1
%   case label 2
%   commands 2...
%   otherwise
%   commands n
% endswitch

% for
%   body
% endfor

% do-until loop
% the opposite to "while" statements

%do 
% body
%until <condition>


% MATRIX CREATION FUNCTIONS

eye(5);
diag(5); % gives you a vector with the diagonal elements
size(5);
zeros(5);
rand(5);
%inv(matrix); 



% ARRAYS, VECTORS, MATRICES

M1=[1,2,3;4,5,6;7,8,9];

M1.**2; % is ² to all elements
M1**2; % is a squared matrix M'*M 

M2=[1,2;3,4];
fliplr(M2); % transpose rows
flipud(M2); % transpose columns
rot90(M2); % rotates 90º and so on



% 





