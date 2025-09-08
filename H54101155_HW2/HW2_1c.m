function [prob] = HW2_1c(~)
prob = zeros(1,10);
defectA = zeros(1, 100000);
defectB = zeros(1, 100000);
defectC = zeros(1, 100000);
for j =1:10
    for i = 1:100000
            x = rand < 0.02;
            defected = x;
            defectA(i) = defected;
    end
    totaldefectA = sum(defectA);
    for i = 1:100000
            x = rand < 0.03;
            defected = x;
            defectB(i) = defected;
    end
    totaldefectB = sum(defectB);
    for i = 1:100000
            x = rand < 0.02;
            defected = x;
            defectC(i) = defected;
    end
    totaldefectC = sum(defectC);
prob(j) = (totaldefectC*0.25)/(totaldefectA*0.30+totaldefectB*0.45+totaldefectC*0.25);
end
save('HW2_1c.mat','prob');