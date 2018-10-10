NA ← 1 2 (2 2⍴3 4 5 6) 7 8

⍝ What are the results of these expressions?

DISPLAY +/NA

⍝ The sum will be applied across the five elements of the nested array. The
⍝ result will be of depth 2, containing a single enclosed matrix (shape 2 2),
⍝ and the sum of 1 2 7 8 will have been added to each of the elements of the one
⍝ matrix in the nested array.

DISPLAY ,/NA

⍝ , here is along the second dimension of the enclosed elements, and that is
⍝ governed by the enclosed matrix. That is, columns of 1 2 7 8 will be appended
⍝ and prepended to the matrix.
