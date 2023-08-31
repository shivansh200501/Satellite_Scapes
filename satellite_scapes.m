image = imread("..\Images\image2.jpg");

grayImage = rgb2gray(image);
threshold = 20; 
segmentedImage = splitMergeSegmentation(grayImage, threshold);



normalSegImag = im2double(segmentedImage);
window = 3;
padSize = floor(window / 2);
paddedImage = padarray(normalSegImag, [padSize, padSize], 'replicate');

averagedImage = zeros(size(normalSegImag));

for i = 1:size(normalSegImag, 1)
    for j = 1:size(normalSegImag, 2)
        neighborhood = paddedImage(i:i+window-1, j:j+window-1);
        averageValue = mean(neighborhood(:));
       
        
        averagedImage(i, j) = averageValue;
    end
end

figure;
subplot(1, 4, 1);
imshow(image);
title('Original Image');
subplot(1, 4, 2);
imshow(grayImage);
title('GreyScale Image');
subplot(1, 4, 3);
imshow(segmentedImage);
title('Segmented Image');
subplot(1, 4, 4);
imshow(averagedImage);
title('Segmented Averaged Image');

function segmented = splitMergeSegmentation(image, threshold)
   
    segmented = zeros(size(image));
    if (max(image,[],'all')-min(image,[],'all')) > threshold
        [height, width] = size(image);
        halfHeight = floor(height/2);
        halfWidth = floor(width/2);
        
        segmented(1:halfHeight, 1:halfWidth) = splitMergeSegmentation(image(1:halfHeight, 1:halfWidth), threshold);
        segmented(1:halfHeight, halfWidth+1:end) = splitMergeSegmentation(image(1:halfHeight, halfWidth+1:end), threshold);
        segmented(halfHeight+1:end, 1:halfWidth) = splitMergeSegmentation(image(halfHeight+1:end, 1:halfWidth), threshold);
        segmented(halfHeight+1:end, halfWidth+1:end) = splitMergeSegmentation(image(halfHeight+1:end, halfWidth+1:end), threshold);
    else
        if max(image,[],'all') >= 127
             segmented(:) = mean(image(:));
        else
             segmented(:) = 0;
        end 
         
    end
end


