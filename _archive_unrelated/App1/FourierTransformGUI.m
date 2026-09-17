function FourierTransformGUI

fig = figure;

axes1 = axes('Parent',fig);

axes2 = axes('Parent',fig); 

% UI components
editText = uicontrol('Style','dit','String',' ',...
    'Position',[20 220 100 20]);

computeButton = uicontrol('Style','pushbutton','String','Compute FFT',...
    'Position',[20 200 100 20],'Callback',@computeTransform);

function computeTransform(src,event)


    timeSignalString = get(editText,'String'); 
    timeSignal = str2num(timeSignalString); 
    
   
    % e.g. timeSignal = filter(b,a,timeSignal);

    freqSignal = fft(timeSignal);  
    
   
    plot(axes1,timeSignal);
    plot(axes2,abs(freqSignal));

end
end
