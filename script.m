Q = 1:160000;
Bfc = 5000; Bvc = 17; %buying fixed cost (Bfc) and variable cost (Bvc)
Mfc = 125000; Mvc = 15; %Making fixed cost (Mfc) and variable cost (Mvc)

B = Bfc + Bvc*Q; 
M = Mfc + Mvc*Q;
hold on 
fs = 20
plot(Q, B, 'linewidth', 3)
plot(Q, M, 'linewidth', 3)
title('Make or Buy vs Quantity', 'fontsize', fs)
xlabel('Quantity', 'fontsize', fs)
ylabel('Cost', 'fontsize', fs)
legend('Buy Option', 'Make Option','fontsize', fs, 'location', 'best')
hold off
print -dpng q1.png
BE = (B==M);
BE = find(BE)
B(BE)
savings = B(150000) - M(150000)

%% 2 
fc_make = 50000; vc_make = 25;
Q = 20000;
fc_buy = 1000; 
variable_buy = (fc_make + Q*vc_make - fc_buy)/Q

%% 3
Q = 1:50000;
Bfc = 600; Bvc = 10; 
Mfc = 50000; Mvc = 8;
B = Bfc + Bvc*Q; 
M = Mfc + Mvc*Q;

hold on 
fs = 20
plot(Q, B, 'linewidth', 3)
plot(Q, M, 'linewidth', 3)
title('Make or Buy vs Quantity', 'fontsize', fs)
xlabel('Quantity', 'fontsize', fs)
ylabel('Cost', 'fontsize', fs)
legend('Buy Option', 'Make Option','fontsize', fs, 'location', 'best')
hold off
print -dpng q3.png
BE = (B==M);
BE = find(BE) %find break even point's index
price_at_BE = B(BE) %check cost @ BE point

%part b
price_buy_option = B(20000)
price_make_option = M(20000)
savings = price_make_option - price_buy_option