function MarkProp( I , prop  , color)

propIm = false(size(I,1) , size(I,2) );
propIm(prop.PixelIdxList) = true;
if ( ~exist('color' , 'var') ) 
    Mark(I , propIm);
else
    Mark(I , propIm , color);
end

end



