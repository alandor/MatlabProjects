function out = PropsData ( bw , data , overlayImage)

if (~exist('data' , 'var') )
    data = 'Centroid';
end

if (~exist('overlayImage' , 'var') )
    overlayImage = repmat ( bwlabel(bw) , [1 1 3]);
end

props = regionprops (bw , 'All') ;
htextins = vision.TextInserter( ...
    'Text', '%.4f', ...
    'Color', [0 0 1], ...
    'Font', 'Arial', ...
    'FontSize', 14);
htextins.LocationSource = 'Input port';

for propNum = 1:length(props)
%     release(htextins);
    currentProp = props(propNum);
    overlayImage = step(htextins , overlayImage , currentProp.Eccentricity , uint16 ([currentProp.Centroid(1) , currentProp.Centroid(2)]));
end

if (nargout < 1)
    fs ( overlayImage );
else
    out = overlayImage;
end



end