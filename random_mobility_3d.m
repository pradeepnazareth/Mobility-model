%------------------------------------------------------------------------%
%----------3D Random Walk Simulation-------------------------------------%
%------------- S. Rao ---------------------------------------------------%
%------------------------------------------------------------------------%

clc
close all;
clear all;

%------------------------------------------------------------------------%

numNodes=100;
min_x=0;
min_y=0;
min_z=0;

max_x=1000;
max_y=1000;
max_z=1000;
step=2;

nodePosition= zeros(numNodes,3);
nodePosition_original= zeros(numNodes,3);





for i=1:numNodes
    nodePosition(i,1) = rand * max_x;
    nodePosition(i,2) = rand * max_y;
    nodePosition(i,3) = rand * max_z;
end
nodePosition_original= nodePosition;
for j=1:1440
for i=1:numNodes
    if(rand(1,1)>=0.5)
        nodePosition(i,1)= nodePosition(i,1) + step;
    else
        nodePosition(i,1)= nodePosition(i,1) - step;
    end
    
     if(rand(1,1)>=0.5)
        nodePosition(i,2)= nodePosition(i,2) + step;
    else
        nodePosition(i,2)= nodePosition(i,2) - step;
     end
     if(rand(1,1)>=0.5)
        nodePosition(i,3)= nodePosition(i,1) + step;
    else
        nodePosition(i,3)= nodePosition(i,1) - step;
     end
end
end

     





