function [thetaDiffs,phiDiffs] = readFile(filename, time)
    %READFILE Reads from filename and creates an array of data
    %   reads all lines of a file containing data in ses of 3 per line
    %   delimited by spaces
    Time = {};
    Rho = {};
    Theta = {};
    Phi = {};

    fileID = fopen(filename,'r');
    
    while(~feof(fileID))    
        Data = textscan(fileID,'%s');
    end
    fclose(fileID);
    
    counter = 0;
    %counter2 = 0;
    for index = 1:length(Data{1})
        if counter == 0
            %counter2 = counter2 + 1;
            %Time = [Time, num2str(counter2)];
            Rho = [Rho, Data{1}{index}];
            counter = counter + 1;
        elseif counter == 1
            degree = str2double(Data{1}(index));
            disp(degree);
            rad = degtorad(degree);
            Theta = [Theta, rad];
            counter = counter + 1;
        else
            degree = str2double(Data{1}(index));
            rad = degtorad(degree);
            Phi = [Phi, rad];
            counter = 0;
        end
    end
    
    thetaDiffs = {};
    thetaDiffs = [thetaDiffs, 0];
    phiDiffs = {};
    phiDiffs = [phiDiffs, 0];
    for index = 2:length(Theta)
        currentThetaDiff = Theta{index} - Theta{index-1};
        currentPhiDiff = Phi{index} - Phi{index-1};
        thetaDiffs = [thetaDiffs, currentThetaDiff];
        phiDiffs = [phiDiffs, currentPhiDiff];
    end
    
    run('telescoperotation');
    for index = 2:length(thetaDiffs)
        set_param('telescoperotation/Step Theta', 'Before', num2str(thetaDiffs{index-1}));
        set_param('telescoperotation/Step Phi', 'Before', num2str(phiDiffs{index-1}));
        set_param('telescoperotation/Step Theta', 'After', num2str(thetaDiffs{index}));
        set_param('telescoperotation/Step Phi', 'After', num2str(phiDiffs{index}));
        sim('telescoperotation', "StartTime", "0", "StopTime", time);
    end
    %set_param('controlSystem/From Workspace', 'VariableName', VariableName);
    %for index = 1:length(Theta)
    %    set_param('controlSystem/Constant','Value',Theta(index))
    %    pause(1)
    %end
end

