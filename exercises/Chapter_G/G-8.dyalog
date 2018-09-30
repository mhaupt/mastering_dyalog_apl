XG8 ← 1 0 0 1 1 1 0 1 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0 1 0 0

⍝ Write a function that finds a list of N contiguous zeroes in a given vector
⍝ such as XG8. Do not use loops. The function should return the index of the
⍝ first such sequence found. If there is no such sequence, it should return 0.

⍝ I had a lot of ideas that all would end up being way too complex and didn't
⍝ feel right. I didn't think of applying what the book's solution is, which I'll
⍝ reproduce here with my own commentary. The "genius move" this solution makes
⍝ is to blow the vector up into a matrix of rotated replicas of itself, and then
⍝ looking for an all-zero column to find the right sequence.

∇ R ← X Free Y;dim;mat;bin
    dim ← ⍴Y←,Y         ⍝ flatten (to be sure), and get the length
    mat ← (X,dim)⍴Y     ⍝ matrix with as many rows as the sequence length

    ⍝ genius move 1: rotate each row left by one more than the previous
    mat ← (¯1+⍳X)⌽mat

    ⍝ genius move 2: ∨⌿mat will apply "or" to all columns, so that if there is
    ⍝ not a single 1 on the column, the result will be 0; then take the first
    ⍝ dim-X columns because the sequence length determines that the remaining
    ⍝ ones aren't interesting
    bin ← (dim-X)↑∨⌿mat

    R ← bin⍳0           ⍝ dyadic ⍳ will find the first 0 in the bin vector

    ⍝ R will be 1+⍴bin if no 0 was found, so checking against ⍴bin and
    ⍝ multiplying the resulting Boolean with R will nicely zero out the result
    ⍝ if no 0 was found
    R ×← R≤⍴bin
∇

