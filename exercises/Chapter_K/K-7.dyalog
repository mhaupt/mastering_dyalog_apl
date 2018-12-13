⍝ Create a vector with a random length between (including) 6 and 16, filled with
⍝ random integers between (including) 3 and 40, dupes allowed.

⍝ The length is computed using 5+?11, and this is used as the left-hand argument
⍝ to ⍴ (so that dupes are possible) in an expression derived from 2+?38.

2+?(5+?11)⍴38

