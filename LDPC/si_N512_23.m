function si_N512_23()
      bb = [3.25 3.5];
      parfor j=1:2
         ebn = bb(j);
         ldpc512_R23(ebn);
      end
      
end
