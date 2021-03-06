function Path_index = DelayChecker(Father,delay_Min)
% Function Path_index = DelayChecker(Father,delay_Min) calculats different pathes
% delay, selects the one that is needed,then updates it with new AC
% AC = Available Capacity
%==============================================================
% Saba Behrouznia
% Concordia University, Montreal, QC, Canada
% 2011- 2013
%==============================================================
%  DATE :            October 2013                                 
%  Last Updated:    
%  ---- Changes month day year: ----
%  
%==============================================================
L1 = length(Father);
% L1 is the number of paths
Path_index = [];
for i=1:L1
    Path_delay = [];
    Path = Father(i);
    L2 = length(Path);
    for ii = 1:L2
        Link = Path{ii};
        LOLO = Link{1};
        Path_delay = [Path_delay LOLO(2)];
    end
    DELAY = sum(Path_delay);
    if DELAY < delay_Min
       %display(sprintf('Path %d  has longer delay than expected',i));
       Path_index = [Path_index i];
    else
       Path_index = -1;

    end    
end

end