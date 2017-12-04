# Class_Accuracy-
Code for parsing results of BL classification ipad game 

Notes from BL:
I have a little bit of code for computing the accuracy (attached), but there isn’t much too it.

To create the “subj” array (which holds all the data), given what you pasted in your email, you should create a Matlab script (“.m” file) that looks like this:

count = 1;
:: PASTE SUBJECT 1 DATA ::
clear(’s’);
:: PASTE SUBJECT 2 DATA ::
clear(’s’);
:: PASTE SUBJECT 3 DATA ::
clear('s’);
…

The “clear” lines are especially important, otherwise subjects can bleed together if they did different numbers of trials.

Best,
Brenden


In the actual file = 

 s.stimulus{1} = 'images_classif/task6a_test2.png';s.type{1} = 'images_classif/task6a_train2.png';s.resp{1} = 'images_classif/task6a_train2.png';s.correct(1) = true;s.practice(1) = true;

The "correct" is wheather they got it right or not!!
