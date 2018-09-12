⍝ Write a function that reverses a vector using a loop.

∇ rev ← ReverseLoop vec;v
    rev ← ⍬
    :For v :In vec
        rev ← v,rev
    :EndFor
∇

