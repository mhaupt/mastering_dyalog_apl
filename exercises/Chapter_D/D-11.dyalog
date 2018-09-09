⍝ Write a multi-line direct function that displays the greatest value in a
⍝ numeric matrix, and its position (row and column) in the matrix.

MaxPlace ← {
    ⍝ Get the row and column maxima, and the actual maximum.
    rowmax ← ⌈/⍵
    colmax ← ⌈⌿⍵
    max ← ⌈/rowmax
    ⍝ Get the row and column positions of the maximum.
    row ← rowmax⍳max
    col ← colmax⍳max
    ⍝ Display the result.
    'The greatest value: ',(⍕max),' is in row ',(⍕row),' column ',(⍕col),'.'
}

⍝ The book's solution does a bit more tearing apart of the matrix, and then
⍝ computes the row and column indices from looking at the shape of ⍵.

