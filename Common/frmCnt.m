function [ cnt ] = frmCnt( cnt , modder)

if ( nargin < 2)
    modder = 10;
end
if ( mod (cnt , modder) == 0)
    fprintf(' === Count: %d === \n' , cnt);
end
cnt = cnt + 1;
end

