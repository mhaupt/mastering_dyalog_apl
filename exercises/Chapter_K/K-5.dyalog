⍝ What will we obtain from this expression?

10+?(10+?10)⍴10

⍝ The innermost expression, 10+?10, will yield one random number between
⍝ (including) 11 and 20. This will be used to build a vector of 10s of that
⍝ length. Then, random numbers between (including) 1 and 10 will be generated,
⍝ and 10 be added to those.

⍝ The end result will be a 11 to 20 random numbers between 11 and 20. Dupes are
⍝ possible.

