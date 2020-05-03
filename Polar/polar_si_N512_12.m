function polar_si_N512_12()

    ebv = [0.25 0.5];

    parfor j=1:2
    
        ebn = ebv(j);

        polar_N512_12(ebn);
        
    end
end