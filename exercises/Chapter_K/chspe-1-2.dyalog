⍝ In Chapter K-Spe 1.2, encode for negative numbers is explained. What is not
⍝ explained but beautifully enlightening is that two's complement works very
⍝ nicely with this.

⍝ The first example,
(6⍴10)⊤17  ⍝ 0 0 0 0 1 7
(6⍴10)⊤¯17 ⍝ 9 9 9 9 8 3
⍝ looks suspiciously like "ten's complement", if you will.

⍝ And rightfully enough, here are 1 and ¯1 in 6-bit two's complement:

(6⍴2)⊤1  ⍝ 0 0 0 0 0 1
(6⍴2)⊤¯1 ⍝ 1 1 1 1 1 1

⍝ And 2 and ¯2:

(6⍴2)⊤2  ⍝ 0 0 0 0 1 0
(6⍴2)⊤¯2 ⍝ 1 1 1 1 1 0

⍝ And, just for fun, 30 and ¯30:

(6⍴2)⊤30  ⍝ 0 1 1 1 1 0
(6⍴2)⊤¯30 ⍝ 1 0 0 0 1 0

