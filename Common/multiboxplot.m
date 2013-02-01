function multiboxplot ( data , groups , featureNames)
% function multiboxplot ( data , groups , featureNames)
% data is n (samples) * m (features)
% groups is classes data with length n(samples)
% featureNames is 1 * m(features) cell array of features names with length features
%
% Walach @
% examples: 
% load carsmall
% groups = Horsepower > 120;
% data = [Horsepower, MPG ];
% multiboxplot ( data , groups , {'Horsepower', 'Mpg' })

classes = unique(groups);
cmap = hsv(length(classes));
if isstr(classes)
classNames = classes;
else
    classNames = num2str(classes);
end

if ~exist('featureNames' , 'var')
   featureNames = 1 : size(data,2);
end

figure;hold on;
for k = 1:length(classes)
    boxplot ( data(groups == classes(k) ,: ), featureNames , 'colors' , cmap(k,:) ) ;
    b = plot(0,0  ); set(b,'Color' , cmap(k,:) );
end
legend(classNames);
hold off