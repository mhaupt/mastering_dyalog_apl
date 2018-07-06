⍝ In a vector, replace all the values less than 20 by 20, and those greater than
⍝ 30 by 30.

Vec ← 26 16 22 17 21 44 25 22 23 44 41 33

⍝ A combination of ⌈ and ⌊ should do the trick.

Vec ← 20⌈Vec⌊30

