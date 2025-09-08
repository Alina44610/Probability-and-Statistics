a = [72.2 31.9 26.5 29.1 27.3 8.6 22.3 26.5 20.4 12.8 25.1 19.2 24.1 58.2 68.1 89.2 55.1 9.4 14.5 13.9 20.7 17.9 8.5 55.4 38.1 54.2 21.5 26.2 59.1 43.3];
ansa = mean(a(:)); %(a)sample mean
ansb = median(a); %(b)sample median
edges = 0:10:100;
ansc = histogram(a,edges,'Normalization','probability');%(c)relative frequency histogram of the data
title('relative frequency histogram of the data')
xlabel('percentages of the families that are in the upper income level  (x軸)')
ylabel('relative frequency  (y軸)')
ansd = trimmean(a,20); %(d)10% trimmed mean
%有加";"所以答案不會出現在command window，只出現在workspace
%(看作業要求並無要求答案是否出現在command window，但還是註解一下)