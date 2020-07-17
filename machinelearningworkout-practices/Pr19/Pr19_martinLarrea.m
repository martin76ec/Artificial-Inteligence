clear;
close all;
clc;

#Lit 3 
photos = {'images (1).jpg', 'images (2).jpg', 'images (3).jpg', 'images (4).jpg', 'images (5).jpg', 'images (6).jpg'}; 
images = {};
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    images{i} = imread(strcat('photos/', photos{i}));
    imshow(images{i});
    title(photos{i});
end

#Lit 5
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    imshow(myWhitener(images{i}));
    title(photos{i});
end

#Lit 7
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    histo = myHistogram(images{i});
    plot(histo(1, :), histo(2, :));
    xlim([0 255]);
    title(photos{i});
end

#Lit 9
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    histo = myCHP(images{i});
    plot(histo(1, :), histo(2, :));
    xlim([0 255]);
    title(photos{i});
end

#Lit 11
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    eqImage = myEqualizer(images{i});
    imshow(uint8(eqImage));
    title(photos{i});
end

#Final
for i = 1:size(photos, 2)
    subplot(2, 3, i);
    eqImage = myEqualizer(images{i});
    histo = myCHP(uint8(eqImage));
    plot(histo(1, :), histo(2, :));
    xlim([0 255]);
    title(photos{i});
end


