function rect = enRect ( rect , enlragement , imsize)
% enlarge rectangle by enlargment amount in each side. Default is 50. If size is supplied than
% makes sure that rect doesnt go overboard
if ~exist ( 'enlragement' , 'var' ) 
    enlragement = 50;
end

rect([1 2]) = max(rect([1 2]) - enlragement , [1 1]);
rect([3 4]) = rect([3 4]) + 2 * enlragement ;

if exist('imsize' , 'var')
    rect([3 4]) = min ( rect([3 4]) , imsize([2 1]) - rect([1 2]) );
end