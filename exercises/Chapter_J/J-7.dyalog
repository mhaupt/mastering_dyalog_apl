⍝ Given the three sides a,b,c of a triangle, and a formula for computing its
⍝ half-perimeter p, and the fact that the area then is the square root of
⍝ p×(p-a)×(p-b)×(p-c), write a function to calculate the area of the triangle.

∇ r ← TrArea (a b c);p
    p ← 0.5×+/a b c
    r ← (p×p×.-a b c)*0.5
∇

⍝ The book's solution, of course, differs slightly, although I got it right that
⍝ an inner product ×.- can be used. The book's solution does two things
⍝ differently. On the one hand, it accepts the argument as a single vector L
⍝ whereas I'm using three scalars for the lengths. On the other hand, the book
⍝ is way more elegant about the inner product in that it factors in the sole p
⍝ from the formula: (p×.-0,L).

