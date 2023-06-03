% Zadani c. 25:
% Napiste program resici ukol dany predikatem u25(VIN), kde promenna VIN  
% obsahuje prirozene cislo. Predikat prevede toto cislo na binarni cislo. 

% Testovaci predikaty:                         			        
u25_1:- u25(113).					% 1110001
u25_2:- u25(1024).                                      % 10000000000
u25_3:- u25(1).                                         % 1
u25_r:- write('Zadej VIN: '),read(VIN),u25(VIN).

% Reseni:
u25(VIN) :- dec_to_bin(VIN, BIN), write(BIN).

dec_to_bin(0, 0). % pokud je N = 0, vraci rovnou 0.
dec_to_bin(N, BIN) :- N > 0, 
                      X is N div 2,
                      Y is N mod 2,
                      dec_to_bin(X, Z),     % rekurzivni volani funkce dec_to_bin
                      BIN is Z * 10 + Y.    % do BIN se dava postupny vysledek zleva, napr. N = 9, BIN 1 -> 10 -> 100 -> 1001
