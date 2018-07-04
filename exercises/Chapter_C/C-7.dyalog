⍝ Given two scalars A, B, find an expression that returns ...
⍝   ⍬ if A=0, whatever the value of B
⍝   0 if B=0 but A isn't
⍝   3 if neither are 0

(A≠0)⍴3×B≠0

⍝ B≠0 will be 1 if B≠0, and that will lead to the result be 0 or 3 in the shape
⍝ determined by A≠0. Now that will be 0 if A=0, leading to the empty vector,
⍝ or 1 if A≠0, leading to a 1-element vector.

