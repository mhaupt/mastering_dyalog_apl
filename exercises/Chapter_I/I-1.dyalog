A ← 1 2 3
B ← 4 5 6
C ← 7 8 9

⍝ Predict the results of the following expressions in terms of depth, ranks, and
⍝ shape.

DISPLAY A B C × 1 2 3

⍝ The vector A B C will be a nested array. Each of the nested arrays (A, B, C)
⍝ will be multiplied with 1, 2, 3; the result will be a nested array (depth 2),
⍝ rank 1.

DISPLAY (10 20),A

⍝ 10 20 is an array that will be prepended to A, leading to a longer version of
⍝ A with the same rank and depth.

DISPLAY (10 20),A B

⍝ The case is different here; A B will be a nested array (depth 2), and (10 20)
⍝ will be prepended to that as two scalar elements. The rank of the result will
⍝ be 1; the depth, 2.

DISPLAY A B 2 × C[2]

⍝ C[2] is a scalar (8). A B 2 is a nested array (depth 2, rank 1) with two
⍝ enclosed arrays and one scalar (2). The result of the multiplication will be
⍝ an array of exactly the same shape, rank, and depth, where each of the
⍝ elements will have been multiplied by 8 (including all of the elements of the
⍝ enclosed arrays).

DISPLAY 10×A 20×B

⍝ Here, the first multiplication will be that of A 20 with B. A 20 is a nested
⍝ array (depth 2, rank 1). This won't work, though, as the length of this
⍝ nested array is 2, whereas B's length is 3. A length error will ensue.

