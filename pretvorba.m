files = dir('podatki/*.dat');
m = '';
for file = files'
   [filepath,name,ext] = fileparts(strcat(file.folder, '\', file.name));
   m = strcat('podatki/', name);
   wfdb2mat(m);
   movefile(strcat(name, 'm.mat'), 'pretvorjeni');
   movefile(strcat(name, 'm.hea'), 'pretvorjeni');
end
%wfdb2mat('podatki/100');