%Yogesh Mundhra
%301346798
%Group 4
%Resize using splne interpolation
picc = imread('a8_img.jpg');
picc = double(picc);
picc = mat2gray(picc);
[rows, cols] = size(picc);
scale = input('What scale would you like?: ');
nrows = round(rows*scale);
ncols = round(cols*scale);
[x, y] = meshgrid(1:rows, 1:cols);
xx = linspace(1, rows, nrows);
yy = linspace(1, cols, ncols);
[xnew, ynew] = meshgrid(xx,yy);
picc_spline = interp2(x,y,picc,xnew,ynew,'spline');
imshow(picc_spline)