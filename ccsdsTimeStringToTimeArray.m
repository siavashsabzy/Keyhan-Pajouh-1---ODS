function timeArray = ccsdsTimeStringToTimeArray(timeString)
timeArray = zeros(1, 6);
timeArray(1,1) = str2double(timeString(1:4));
timeArray(1,2) = str2double(timeString(6:7));
timeArray(1,3) = str2double(timeString(9:10));
timeArray(1,4) = str2double(timeString(12:13));
timeArray(1,5) = str2double(timeString(15:16));
timeArray(1,6) = str2double(timeString(18:23));
end