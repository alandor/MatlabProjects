function [ labelRGB ] = MarkLabels(img , mask)
%MAARKLABELS Marks Labels
%   labelRGB = MarkLabels(img,labels) Marks the different labels in
%   the laels mat and blends them on the img
% 
%   labelRGB = MarkLabels(img,mask) calculated the labels from the BW mask
%
%   See also Mark 
%

%   Walach BAAM
if all( mask(:)  <= 1) 
    % if mask in binary than extract label
    conn = bwlabel(mask);
else
    conn = mask;
    % or mabye mask if already in label form?
end

RGBlabel = label2rgb(conn,'spring', 'w', 'shuffle');

whiteLabel = RGBlabel(:,:,1) == 255 & RGBlabel(:,:,2) == 255 & RGBlabel(:,:,3) == 255;
bla(:,:,1) = whiteLabel;
bla(:,:,2) = whiteLabel;
bla(:,:,3) = whiteLabel;
finalLabel = img;
finalLabel(~bla) = RGBlabel(~bla);
if (nargout < 1)
    fs(finalLabel);
else
    labelRGB = finalLabel;
end

end

