M ← 3 5⍴8 2 5 1 4 3 7 1 5 0 4 3 6 0 6

⍝ Calculate the following expressions (by brain) and check on the computer.

⌈/M
⍝ This will yield a vector of the maxima of each of the rows of M, i.e., 8 7 6.

⌊/+/M
⍝ The rows will be summed, yielding a vector, of which the minimum will be
⍝ taken. The vector of sums is 20 16 19; the result, 16.

×/⌊/[1]M
⍝ Here, the minima of columns will be taken (yielding 3 2 1 0 0), and that
⍝ vector will be reduced by multiplication, yielding 0.

×/⍴M
⍝ The shape of M is 3 5, so the result will be 15.

