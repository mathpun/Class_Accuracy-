ef = @(field) extract_field(field,subj);
n = length(subj);
practice_acc = zeros(n,1);
acc = zeros(n,1);
for i=1:n

   s = subj{i};

   correct = s.correct;
   exp = ~s.practice;

   selected_trials = correct(exp);
   acc(i) = mean(selected_trials)*100;
   practice_acc(i) = mean(correct(~exp))*100;
end

exp_time = ef('exp_elapsed_time_sec');

mean_acc = mean(acc);
se_acc = std(acc) ./ sqrt(numel(acc));
max_acc = max(acc);
min_acc = min(acc);
fprintf(1,' mean accuracy: %s percent correct (max=%s,min=%s, se=%s)\n',ps(mean_acc,3),ps(max_acc,3),ps(min_acc,3),ps(se_acc));

[R,P] = corrcoef(acc,exp_time);
r = R(2);
p = P(2);
fprintf(1,' correlation between accuracy and time: r=%s (p=%s)\n',ps(r,3),ps(p,3));

fprintf(1,' practice trials: %s percent correct\n',ps(mean(practice_acc),3));