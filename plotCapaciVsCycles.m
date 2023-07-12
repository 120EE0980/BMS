close all;
load('B0005.mat')
load('B0006.mat')
load('B0007.mat')
load('B0018.mat')
b5data=B0005.cycle;
b6data=B0006.cycle;
b7data=B0007.cycle;
b18data=B0018.cycle;
inds_5 = [];% initialize index array
Capacity_5 =[];
counter_5 = 0;
for i=1:length(b5data) 
    if(strcmp(b5data(i).type,'discharge'))
        counter_5=counter_5+1;
        inds_5 = [inds_5, counter_5];
        Capacity_5=[Capacity_5,b5data(i).data.Capacity];
    end
end
inds_6 = [];% initialize index array
Capacity_6 =[];
counter_6 = 0;
for i=1:length(b6data) 
    if(strcmp(b6data(i).type,'discharge'))
        counter_6=counter_6+1;
        inds_6 = [inds_6, counter_6];
        Capacity_6=[Capacity_6,b6data(i).data.Capacity];
    end
end
inds_7 = [];% initialize index array
Capacity_7 =[];
counter_7 = 0;
for i=1:length(b7data) 
    if(strcmp(b7data(i).type,'discharge'))
        counter_7=counter_7+1;
        inds_7 = [inds_7, counter_7];
        Capacity_7=[Capacity_7,b7data(i).data.Capacity];
    end
end
inds_18 = [];% initialize index array
Capacity_18 =[];
counter_18 = 0;
for i=1:length(b18data) 
    if(strcmp(b18data(i).type,'discharge')) 
        counter_18=counter_18+1;
        inds_18 = [inds_18, counter_18];
        Capacity_18=[Capacity_18,b18data(i).data.Capacity];
    end
end
plot(inds_5,Capacity_5,'-o','DisplayName','B0005');
grid on;
hold on;
plot(inds_6,Capacity_6,"-^",'DisplayName','B0006');
plot(inds_7,Capacity_7,"-*",'DisplayName','B0007');
plot(inds_18,Capacity_18,"-diamond",'DisplayName','B0018');
legend();
