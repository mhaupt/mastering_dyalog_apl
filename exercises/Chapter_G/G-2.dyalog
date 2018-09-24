XG1 ← 3 5⍴1 9 5 3 6 5 4 8 2 3 7 7 6 2 6

⍝ Produce, from XG1, the following matrix:
⍝    1 9 5 3 6 0
⍝    5 4 8 2 3 0
⍝    7 7 6 2 6 0
⍝    0 0 0 0 0 0

(1+⍴XG1)↑XG1 ⍝ a little sneaky but generic ;-)

