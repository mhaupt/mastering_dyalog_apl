⍝ We have another variable Z that we want to know the value of.

⍝ Z=0 is 0 1 0 0
⍝        1 0 0 1, so we know that ⍴Z is 2 4, and that the values must be
⍝ ? 0 ? ?
⍝ 0 ? ? 0.

⍝ +/[2]Z is 20 6, i.e., the sum of the first row is 20, and that of the second,
⍝ 6.

⍝ +/[1]Z is 8 7 6 5, and these are the sums of the columns. Now we know the
⍝ values of Z must be 8 0  7 5
⍝                     0 7 ¯1 0.

Z ← 2 4 ⍴ 8 0 7 5 0 7 ¯1 0

