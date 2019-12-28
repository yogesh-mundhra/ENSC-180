%Yogesh Mundhra
%301346798
%Group 4
%Resize using nearest neighbouring pixel
pica = imread('a8_img.jpg');
pica = double(pica);
pica = mat2gray(pica);
[rows, cols] = size(pica);
scale = input('What scale would you like?: ');
nrows = round(rows*scale);
ncols = round(cols*scale);
[x, y] = meshgrid(1:rows, 1:cols);
xx = linspace(1, rows, nrows);
yy = linspace(1, cols, ncols);
[xnew, ynew] = meshgrid(xx,yy);
pica_nearest = interp2(x,y,pica,xnew,ynew,'nearest');
imshow(pica_nearest)