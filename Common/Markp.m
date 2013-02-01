function  [out] = Markp( I , mask , thickness , color )
%MARK Marks the perimeter of BW mask on the image
%   Walach BAAM

if ~exist('color' , 'var')
    color = [255 0 0];
end
if ~exist('thickness' , 'var')
    thickness = 3;
end

mask = bwperim(mask);
mask = imdilate(mask , ones(thickness) ) ;

if nargout > 0
    out = Mark ( I , mask , color ) ;
else
    Mark ( I , mask , color ) ;
end

end