function k =  WhatProp( bw  , prop )
% WhatProp ( bw , prop ) 
% Open a bwselect and outputs the prop num at k
% 
props = regionprops(bw , 'PixelIdxList');

if ~exist('prop' , 'var')
    prop = bwselect(bw);
end
k = -1;
for k = 1:length(props)
    randPix = props(k).PixelIdxList( floor(end /2) );
    if  prop ( randPix )
        return;
    end
end
k = -1;


end
