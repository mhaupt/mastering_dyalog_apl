XG9 ← 11 8⍴'Emily   Luciano Paul    Oxana   Thor    Carmen  VeronicaWilliam VladimirMonica  Colette '

⍝ Write a function that splits a matrix like the above into slices and positions
⍝ these next to each other, with a blank inserted in between.

⍝ Like with exercise G-8, my thinking wasn't array oriented enough, and I ended
⍝ up devising ever more complex solutions. I'll again take the book's solution
⍝ and document my understanding (and admiration).

∇ R ← X Split Y;shape
    ⍝ Reshape the matrix into a matrix of rank 3, consisting of X matrices of
    ⍝ rank 2. Those matrices have as many rows as there should be elements in
    ⍝ each of the split partitions (rounded up from the division), and the
    ⍝ original number of columns. Using ↑ will automatically add padding blanks
    ⍝ at the end of the final partition.
    shape ← ⍴Y
    shape ← X,(⌈shape[1]÷X),shape[2]
    R ← shape⍴((×/2↑shape),2↓shape)↑Y

    ⍝ Appending a blank to all columns of R and then flipping the first and
    ⍝ second dimensions will lead to R now containing as many rank-2 matrices
    ⍝ as there are entries per partition column, and each of those rank-2
    ⍝ matrices will contain the elements of one line of the resulting matrix.
    shape ← ⍴R←2 1 3⍉R,' '
    
    ⍝ Prepare the final shape. Thanks to the previous rotation, the number of
    ⍝ rows in the result is now the first element of the shape; and the second
    ⍝ is computed by multiplying the remaining entries, yielding the number of
    ⍝ characters on each of the rows.
    shape ← shape[1],×/1↓shape

    ⍝ Finally, reshape the result matrix.
    R ← shape⍴R
∇

