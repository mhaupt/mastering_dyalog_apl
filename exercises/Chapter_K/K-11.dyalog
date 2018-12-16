⍝ a,b,c meet these conditions:
⍝ a-b+3c=13, 4b-2a=¯6, a-2b+2c=10
⍝ Compute 3a+5b-c.

⍝ We need to solve the equations first.
a b c ← 13 ¯6 10⌹3 3⍴1 ¯1 3 ¯2 4 0 1 ¯2 2

⍝ Now compute.
3 5 ¯1+.×a b c

⍝ ... which is 0.

⍝ More elegantly and less readably, this can be combined into one expression:
3 5 ¯1+.×13 ¯6 10⌹3 3⍴1 ¯1 3 ¯2 4 0 1 ¯2 2

