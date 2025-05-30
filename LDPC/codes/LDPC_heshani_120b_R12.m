% =============================================================================
% Title       : 802.11n D2.0 LDPC Code Definition
% -----------------------------------------------------------------------------
% Revisions   :
%   Date       Version  Author  Description
%   05-jul-07  1.0      studer  file created
% =============================================================================

function LDPC = LDPC_heshani_120b_R12

  LDPC.name = 'LDPC_heshani_120b_R12.mat';
   
  LDPC.Z = 5; % subblock size
    
  H =   {'40' '-' '-' '-' '22' '-' '49' '23' '43' '-' '-' '-' '1' '0' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-';
         '50' '1' '-' '-' '48' '35' '-' '-' '13' '-' '30' '-' '-' '0' '0' '-' '-' '-' '-' '-' '-' '-' '-' '-';
         '39' '50' '-' '-' '4' '-' '2' '-' '-' '-' '-' '49' '-' '-' '0' '0' '-' '-' '-' '-' '-' '-' '-' '-';
         '33' '-' '-' '38' '37' '-' '-' '4' '1' '-' '-' '-' '-' '-' '-' '0' '0' '-' '-' '-' '-' '-' '-' '-';
         '45' '-' '-' '-' '0' '22' '-' '-' '20' '42' '-' '-' '-' '-' '-' '-' '0' '0' '-' '-' '-' '-' '-' '-';
         '51' '-' '-' '48' '35' '-' '-' '-' '44' '-' '18' '-' '-' '-' '-' '-' '-' '0' '0' '-' '-' '-' '-' '-';
         '47' '11' '-' '-' '-' '17' '-' '-' '51' '-' '-' '-' '0' '-' '-' '-' '-' '-' '0' '0' '-' '-' '-' '-';
         '5' '-' '25' '-' '6' '-' '45' '-' '13' '40' '-' '-' '-' '-' '-' '-' '-' '-' '-' '0' '0' '-' '-' '-';
         '33' '-' '-' '34' '24' '-' '-' '-' '23' '-' '-' '46' '-' '-' '-' '-' '-' '-' '-' '-' '0' '0' '-' '-';
         '1' '-' '27' '-' '1' '-' '-' '-' '38' '-' '44' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-' '0' '0' '-';
         '-' '18' '-' '-' '23' '-' '-' '8' '0' '35' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-' '0' '0';
         '49' '-' '17' '-' '30' '-' '-' '-' '34' '-' '-' '19' '1' '-' '-' '-' '-' '-' '-' '-' '-' '-' '-' '0'};

             
    [row ,col] = size(H);

%     prot = cell(row,col) ;
    
    for i=1:row
        for j=1:col
                if H{i,j} ~= '-'
                    H{i,j}= int2str( mod( str2double(H{i,j}) , LDPC.Z ) );
                end
        end
    end
  %----------
    
  LDPC.H_prot =  H;
  
  LDPC = genmatt(LDPC); % compute check and generator matrices
  
return
            