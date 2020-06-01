% if when plotting you get a full black plot, then change your settings by 
% writing in the command window: graphics_toolkit("gnuplot")
% https://stackoverflow.com/questions/46530224/plot-generated-in-octave-is-fully-black

x=[1:0.1:10];
plot(x,sin(x));

% way easier than in python
plotmatrix(randn(100,3),"g+")

% there are a lot of commands to plot the measurements with it uncertainties, 
% like with sigmaplot/gnuplot, that's awesome

% subplots are very easy too


