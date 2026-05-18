# CFD Image Extractor (MATLAB)

A MATLAB script that loops through all `AF-XXX` subfolders in the Chicago Face Database and moves all `.jpg` images into a single destination folder.

## Usage

Edit the source and destination paths in the script, then run it in MATLAB.

```matlab
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
```

## Reference

Chicago Face Database (CFD) can be downloaded from the official website:

> Ma, D. S., Correll, J., & Wittenbrink, B. (2015). The Chicago Face Database: A free stimulus set of faces and norming data. *Behavior Research Methods, 47*(4), 1122–1135.
> https://doi.org/10.3758/s13428-014-0532-5

**Download:** [https://www.chicagofaces.org/](https://www.chicagofaces.org/)
