function y = skaicsinc(x)
% SKAICSINC Apskaiciuoja sin(x)/x funkcija.
% Kai x = 0, rezultatas yra 1.
% Kai x nelygus 0, rezultatas yra sin(x)/x.
%as rokas

if x == 0
    y = 1;
else
    y = sin(x) / x;
end

end
