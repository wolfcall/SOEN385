function [Rho,Theta,Phi] = readFile(filename)
    %READFILE Reads from filename and creates an array of data
    %   reads all lines of a file containing data in ses of 3 per line
    %   delimited by spaces
    Rho = {};
    Theta = {};
    Phi = {};

    fileID = fopen(filename,'r');
    
    while(~feof(fileID))    
        Data = textscan(fileID,'%s');
    end
    fclose(fileID);
    
    counter = 0;
    for index = 1:length(Data{1})
        if counter == 0
            Rho = [Rho, Data{1}{index}];
            counter = counter + 1;
        elseif counter == 1
            Theta = [Theta, Data{1}{index}];
            counter = counter + 1;
        else
            Phi = [Phi, Data{1}{index}];
            counter = 0;
        end
    end
    
    disp(Rho)
    disp(Theta)
    disp(Phi)
end

