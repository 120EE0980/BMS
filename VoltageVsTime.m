close all;
counter=0;
for i=1:length(b5data) 
    if(strcmp(b5data(i).type,'discharge'))
        counter=counter+1;
       if rem(counter,40) ==1
           Time_i=b5data(i).data.Time/3600;
           Voltage_i=b5data(i).data.Voltage_measured;
           plot(Time_i,Voltage_i,'DisplayName',['Cycle #' num2str(counter)]);
           legend();
           hold on;
           grid on;
       end
    end
end
