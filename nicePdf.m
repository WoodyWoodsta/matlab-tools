function [] = nicePdf(figure, width, height, filePath)
%NICEPDF Save figure as a good quality pdf file
    
  % Allow manual positioning of figure
  figure.PaperPositionMode = 'Manual';
  
  % Set figure and page units
  figure.Units = 'centimeters';
  figure.PaperUnits = 'Centimeters';
  
  % Set the page size and figure position
  figure.PaperSize = [width height];
  figure.PaperPosition = [0 0 width height];
  
  % Export the figure
  print(filePath, '-dpdf');
end
