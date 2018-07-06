⍝ Remove all the values not in [20,30[ from a vector.

Vec ← 26 16 22 17 21 44 25 22 23 44 41 33

⍝ We can do this by compressing along a vector that has a 1 for all the values
⍝ less than 20 or greater than or equal to 30.

((Vec<20)∨Vec≥30)/Vec

