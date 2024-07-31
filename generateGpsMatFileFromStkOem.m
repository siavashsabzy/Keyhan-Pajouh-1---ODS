clear
clc
%%
oemFileId = fopen("Satellite1.oem");
firstDataLineNumber = 22;
lastDataLineNumber = 86422;
for i = 1:firstDataLineNumber - 1
    fgetl(oemFileId);
end
totalDataLines = lastDataLineNumber - firstDataLineNumber + 1;

%%
gpsData = zeros(totalDataLines , 13);

for i = 1:totalDataLines
    tline = fgetl(oemFileId);
    if isempty(tline)
        break;
    end
    timeString = tline(1:24);
    timeArray = ccsdsTimeStringToTimeArray(timeString);
    pvArray = str2num(tline(27:end));
    gpsData(i,:) = [i, timeArray, pvArray];
end
