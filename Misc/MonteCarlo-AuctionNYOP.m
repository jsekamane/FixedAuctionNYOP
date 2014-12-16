N_array = linspace(2,10,9);

I = 10000;
Auction = [];
NYOP_m_fast = [];
NYOP_m_best = [];
NYOP_2nd_fast = [];
NYOP_2nd_best = [];

for N = 2:10
    %N = 5;
    exp_2nd = (N-1)/(N+1);

    % Values
    Values = rand(I, N);
    Values_sort = sort(Values, 2);

    % Auction: Second highest
    Auction = [Auction, mean(Values_sort(:,(N-1)))];
    
    % Threshold level
    Threshold = repmat(rand(I, 1).*exp_2nd, [1 N]);
    
    % NYOP (mid-point)
    Values_NYOP = Values_sort;
    Values_NYOP(Values_NYOP < Threshold) = NaN;
    Values_NYOP(Values_NYOP > 1/2) = 1/2;
    % random who is fastest.
    NYOP_m_fast = [NYOP_m_fast, nanmean(nanmean(Values_NYOP))];
    % Best case scenarior / largest
    Values_NYOP_max = nanmax(Values_NYOP, [], 2);
    NYOP_m_best = [NYOP_m_best, nanmean(Values_NYOP_max)];
    
    % NYOP (Second highest): 
    Values_NYOP = Values_sort;
    Values_NYOP(Values_NYOP < Threshold) = NaN;
    Values_NYOP(Values_NYOP > exp_2nd) = exp_2nd;
    % random who is fastest.
    NYOP_2nd_fast = [NYOP_2nd_fast, nanmean(nanmean(Values_NYOP))];
    % Best case scenarior / largest
    Values_NYOP_max = nanmax(Values_NYOP, [], 2);
    NYOP_2nd_best = [NYOP_2nd_best, nanmean(Values_NYOP_max)];
end

NYOP_m_error = (NYOP_m_best - NYOP_m_fast)/2;
NYOP_m_avg = (NYOP_m_best+NYOP_m_fast)/2;
NYOP_2nd_error = (NYOP_2nd_best - NYOP_2nd_fast)/2;
NYOP_2nd_avg = (NYOP_2nd_best+NYOP_2nd_fast)/2;

figure
plot(N_array, Auction, 'ro')
hold on
errorbar(N_array, NYOP_2nd_avg, NYOP_2nd_error, 'g.')
ylim([0 1])
title('Comparison of Auction and NYOP final prices')
xlabel('Number of buyers')
ylabel('Avg. final price')