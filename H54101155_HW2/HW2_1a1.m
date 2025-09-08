function [defect] = HW2_1a1(defectiverate, totalnumber)
defect = zeros(1, totalnumber);
for i = 1:totalnumber
    x = rand < defectiverate;
    defected = x;
    defect(i) = defected;
end
end