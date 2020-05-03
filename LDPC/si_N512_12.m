function si_N512_12()
ebv = [2.5 2.75];

      parfor j=1:2
         ebn = ebv(j);
         ldpc512_R12(ebn);
      end
      
end
