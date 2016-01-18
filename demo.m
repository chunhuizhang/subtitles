clear, clc
I = imread('./home.JPG');
I = I(65:(720-65), :, :);
[h, w, d] = size(I);
% imshow(I((720-90-65):(720-65), :, :))
O = zeros(h+90*9, w, d);
O(1:h, 1:w, 1:d) = I;
for i = 1:9,
    T = imread(sprintf('./%d.JPG', i));
    O(h+90*(i-1)+1:h+90*i, :, :) = T((720-90-65-10):(720-65-10-1), :, :);
end
imshow(uint8(O), [])
imwrite(uint8(O), './test.png')
% rect = getrect()
