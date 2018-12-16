⍝ Find the solutions to these equations:
⍝ x-y=5, y-2z=¯7, z-x=2

cons ← 5 ¯7 2
coefs ← 3 3⍴1 ¯1 0 0 1 ¯2 ¯1 0 1

(⌹coefs)+.×cons

⍝ This yields ¯2 ¯7 0.

⍝ And the book reminds me that this approach is actually more elegant:
cons⌹coefs

