% Specify the folder path where the pictures will be moved to
folderPath = 'move/to/here';

% Loop through all the folders
for i = 1:1000
    % Get the folder name
    folderName = sprintf('AF-%03d', i);
    
    % Get the full path of the folder
    folderFullPath = fullfile('move/from/here', folderName);
    
    % Check if the folder exists
    if ~exist(folderFullPath, 'dir')
        % Folder doesn't exist, skip to the next one
        continue;
    end
    
    % Get all the picture file names in the folder
    pictureFiles = dir(fullfile(folderFullPath, '*.jpg'));
    
    % Loop through all the picture files
    for j = 1:numel(pictureFiles)
        % Get the full path of the picture file
        pictureFullPath = fullfile(folderFullPath, pictureFiles(j).name);
        
        % Move the picture file to the parent directory
        movefile(pictureFullPath, folderPath);
    end
end