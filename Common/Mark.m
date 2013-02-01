function  [out] = Mark( I , mask , color )
%MARK Marks the BW mask on the image
%   [out] = Mark( I , mask ) marks the white parts in the mask image in
%   red over I. And outpus the result to out
%
%   Mark( I , mask ) does not return a result just prints the marked image
%
%   [out] = Mark( I , mask , color ) marks the output with given color
%
%   Example
%   -------
%   I = imread('cameraman.tif');
%   perim = bwperim(I > 150);
%   Mark(I , perim , [0 255 0]);
% 
%   See also MarkLabels
%

%   Walach BAAM

if(nargin < 3)
    color = [255 0 0];
end
% if color is triplet and img is grayscale than replicate it
if isa(I,'logical')
    I = single(I);
end
if ( size(I , 3) < length(color) )
    I = repmat(I , [1 1 3]);
end

print = nargout < 1 ;

for channel = 1:size(I , 3)
    clr = color(channel);
    if(clr == 0)
        continue;
    end
    %     Segout = I(:,:,channel);
    %     Segout(edges) = clr;
    %     I(:,:,channel) = Segout;
    ind = find(mask);
    ind = ind + (channel-1)*size(I ,1)*size(I ,2);
    I(ind) = clr;
end

if (print)
    figure; imshow(I);title(inputname(2));impixelinfo
else
    out = I;
end;

end