function out = fs( varargin )
% figure and than imshow with all arguments
% if second any of the arguments is 'fs' than makes the figure
% fullscree n

h = figure('Name' , inputname(1));

% if any of the arguments is fs. make full screen
eq2fs = cellfun ( @(str) strcmpi(str,'fs') , varargin );
varargin = varargin(~eq2fs);
imshow ( varargin{:} );
impixelinfo; title(inputname(1));

if any(eq2fs)
    screenSize = get(0,'ScreenSize');
    set ( h , 'Position' , screenSize);
end

if ( nargout > 0 ) 
    out = h;
end

end

