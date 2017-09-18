%
% Extract a common field from a cell array of structures
%
function v = extract_field(field,subj)

    if ~exp_isfield(field,subj)
       v = []; 
       return
    end

    val = subj{1}.(field);
    n = length(subj);
    if isnumeric(val) && isscalar(val)
       v = zeros(n,1);
       for i=1:n
         v(i) = subj{i}.(field);
       end      
    else
       v = cell(n,1);
       for i=1:n
          v{i} = subj{i}.(field); 
       end        
    end
end