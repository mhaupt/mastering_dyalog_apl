⍝ ((⍳4)-1)⌈3 is 3 3 3 3
⍝ The evaluation of ⌈ doesn't care on what side of the function the 3 appears.
⍝ The trick here is to turn the subtraction of 1 from ⍳4 into adding ¯1.
3⌈¯1+⍳4

⍝ 7⌊(⍳9)⌈3 is 3 3 3 4 5 6 7 7 7
⍝ Again, it doesn't matter on what side of ⌈ the 3 appears, so this operation
⍝ can just be moved to the front.
3⌈7⌊⍳9

⍝ 1+((⍳5)=1 4 3 2 5)×5 is 6 1 6 1 6
⍝ The multiplication with 5 can be moved further to the front, removing one
⍝ pair of parentheses:
1+5×(⍳5)=1 4 3 2 5
⍝ Then, the order of values around = can simply be flipped.
1+5×1 4 3 2 5=⍳5

