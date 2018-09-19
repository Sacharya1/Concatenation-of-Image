% concatenation of two or more different images

clc;
clear all;

% Reading 1st Image
first_image= imread('Image.JPEG');

% Showing 1st Image
f1=figure;
imshow(first_image);

% Reading 2nd Image
second_image= imread('Sampad.jpg');

% Showing 2nd Image
f2=figure;
imshow(second_image);


% RGB to Grayscale
Gray_Image_1= rgb2gray(first_image);
Gray_Image_2= rgb2gray(second_image);

% Showing Grayscale images

f3=figure;
imshow(Gray_Image_1);
f4=figure;
imshow(Gray_Image_2);


% newImg = cat(2,first_image,second_image);
% imshow(newImg);


% Reading Image dimension 
[rows1,cols1]= size(Gray_Image_1);
[rows2,cols2]= size(Gray_Image_2);

% Finding maximum of dimension of two images

MaxDim= max(cols1, cols2);
MinDim= min(cols1, cols2);


A1=MaxDim-cols1;
A2=MaxDim-cols2;


% B1=MinDim-cols1;
% B2=MinDim-cols2;

Gray_Image_1_zeros = [zeros(size(Gray_Image_1,1),A1) Gray_Image_1];
Gray_Image_2_zeros = [zeros(size(Gray_Image_2,1),A2) Gray_Image_2];

% Gray_Image_1_zeros = [zeros(size(Gray_Image_1,1),B1) Gray_Image_1];
% Gray_Image_2_zeros = [zeros(size(Gray_Image_2,1),B2) Gray_Image_2];

% Creating concatenated New Image
NewImage= [Gray_Image_1_zeros; Gray_Image_2_zeros];

% Showing concatenated New Image
f5=figure;
imshow(NewImage);




