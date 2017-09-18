% print number string, default 2 dcimals
function out = ps(s,sd)
    if ~exist('sd','var')
        sd = 2;
    end
    out = num2str(s,sd);
end