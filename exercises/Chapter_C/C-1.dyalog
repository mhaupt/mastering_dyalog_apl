⍝ 3×2+6≠3×2 must be 6, as 3×2 is 6, then 6≠6 is 0, then 3×2+0 is 6.

⍝ 12 6 27 ⌊ 11 + ⍳3
⍝   ⍳3 is 1 2 3
⍝   then 11 + 1 2 3 is 12 13 14
⍝   then 12 6 27 ⌊ 12 13 14 is 12 6 14.

⍝ 4 5 6 ⌈ 4 + 2 5 9 > 1 6 8
⍝   2 5 9 > 1 6 8 is 1 0 1
⍝   then 4 + 1 0 1 is 5 4 5
⍝   then 4 5 6 ⌈ 5 4 5 is 5 5 6.

⍝ 7 ⌊ 25 6 17 - (2 × 3) + 9 3 5
⍝   (2×3) + 9 3 5 is 6 + 9 3 5 is 15 9 11
⍝   then 25 6 17 - 15 9 11 is 10 ¯3 6
⍝   then 7 ⌊ 10 ¯3 6 is 7 ¯3 6.

⍝ ((8 + 6) × 2 + 1) × 3 - 6 ÷ 3
⍝   6 ÷ 3 is 2, then 3 - 2 is 1, so the expression left to × is on its own
⍝   that's (8+6) × 3, ergo 42.

⍝ (⍴4⌈5) + 4⌈5
⍝   4⌈5 is 5
⍝   caveat: ⍴4⌈5 is ⍴5 is empty vector (shape of a scalar)
⍝   so result is empty vector.

