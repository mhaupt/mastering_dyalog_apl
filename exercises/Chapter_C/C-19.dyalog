⍝ Why do these generate errors?

⍝ 3+(5-(6+2)×4
⍝ ... missing closing parenthesis.

⍝ 121÷(⍳4)-3
⍝ ... (⍳4)-3 will be ¯2 ¯1 0 1, which leads to a division by zero.

⍝ (¯X+5)*2
⍝ ... ¯ isn't a function; use monadic -.

⍝ ⍴4 5 6+2 3-1
⍝ ... 2 3-1 will be 1 2, then 4 5 6+1 2 has mismatched lengths.

⍝ ⍳4 0 ¯4+2 0 1
⍝ ... 4 0 ¯4+2 0 1 will be 6 0 ¯3, and we can't have negative arguments to
⍝ monadic ⍳.

