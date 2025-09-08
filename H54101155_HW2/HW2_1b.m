function [totaldefect] = HW2_1b(~)
totaldefect = zeros(1,1000);
for j = 1:1000
    HW2_1a1(0.02, 10000);
    totaldefect(j) = sum(HW2_1a1(0.02, 10000));
end
edges = 140:5:260;
histogram(totaldefect,edges,'Normalization','probability')
save('HW2_1b.mat','totaldefect');
