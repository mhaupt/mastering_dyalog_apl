XG4 ← 4 7⍴0 0 8 0 0 3 0 0 7 0 0 0 0 0 6 0 2 0 0 0 1 0 0 0 0 4 0 0

⍝ Write a function that compacts a sparse matrix.

∇ con ← Contraction mat;rav;vv;val;sh;pos
    ⍝ ravel the matrix
    rav ← ,mat
    ⍝ extract the values and positions
    vv ← rav≠0
    val ← vv/rav
    pos ← vv/⍳⍴rav
    ⍝ extract the shape of the matrix, as a 1-column vector
    sh ← 2 1⍴⍴mat
    ⍝ place the values and positions as rows, and add the shape to the left
    con ← sh,val,[0.5]pos
∇

⍝ Write a function that restores a sparse matrix from compressed form.

∇ spa ← Restore con;sh;val;pos;spa
    ⍝ extract shape, values, and positions
    sh ← 2⍴2 1↑con
    val ← 1↓,1↑con
    pos ← 1↓,¯1↑con
    ⍝ create a vector of zeroes of the right size
    spa ← (×/sh)⍴0
    ⍝ place the values where they belong
    spa[pos] ← val
    ⍝ reshape
    spa ← sh⍴spa
∇

