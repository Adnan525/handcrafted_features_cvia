function [surfFeaturesRow] = helperExtractSURFFeaturesFromImageSet(img)

        img = im2gray(img);
        points = detectSURFFeatures(img);  
        features = extractFeatures(img, points);
        surfFeaturesRow = reshape(features, 1, []);
end
