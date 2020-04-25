function  SavefileName(cellStr,soundName,fs)
    fileS1 = cellStr{1};
    fileS0 = 'Mono_';
    fileName = strcat(fileS0,fileS1);
    audiowrite(fileName,soundName,fs);
        Str = "Create file:";
         mes = sprintf(fileName);
         fprintf("%s %s\n",Str,mes);
end