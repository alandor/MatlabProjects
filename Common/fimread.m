function img = fimread(bdir , imnum , varargin)
% READS img from bdir directory. Sends it to imread

ext{1} = '*.jpg';
ext{2} = '*.jpeg';
ext{3} = '*.png';
ext{4} = '*.bpm';

for k = 1: length(ext)
    imgs = dir ( fullfile( bdir ,ext{k} )) ;
    if length(imgs) > 0
        break;
    end
end

imname = fullfile ( bdir , imgs(imnum).name );
img =  imread ( imname , varargin{:} ) ;

end