function [ dset ] = mat2dataset( mat , varNames )
% Create dataset from given matrix
% varNames is cell array with names corresponding to clumns of mat
% { name1 , name2 , ... } 
% 
% Elad Walach

dataset_params = varNames;
dataset_params(2:end+1) = dataset_params(1:end); dataset_params{1} = mat;
dset = dataset( dataset_params );

end

