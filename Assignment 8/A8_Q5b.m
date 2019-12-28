%Yogesh Mundhra
%301346798
%Group 4
%Resize using linear interpolation
picb = imread('a8_img.jpg');
picb = double(picb);
picb = mat2gray(picb);
[rows, cols] = size(picb);
scale = input('What scale would you like?: ');
nrows = round(rows*scale);
ncols = round(cols*scale);
[x, y] = meshgrid(1:rows, 1:cols);
xx = linspace(1, rows, nrows);
yy = linspace(1, cols, ncols);
[xnew, ynew] = meshgrid(xx,yy);
picb_linear = interp2(x,y,picb,xnew,ynew,'linear');
imshow(picb_linear)