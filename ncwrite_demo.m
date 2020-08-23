clear;
clc;

% creat variable
nccreate('myncfile.nc','data',...
    'Dimensions', {'x',3,'y',6,'z',100},...
    'FillValue','disable');
nccreate('myncfile.nc','lon','Dimensions',{'x',3});
nccreate('myncfile.nc','lat','Dimensions',{'y',6});
nccreate('myncfile.nc','time','Dimensions',{'z',100});

% put data to variable
ncwrite('myncfile.nc','lon',zeros(3,1));
ncwrite('myncfile.nc','lat',zeros(6,1));
ncwrite('myncfile.nc','data',zeros(3,6,100));

% check whether success
info = ncinfo('myncfile.nc');
