A ← 1 2 3
B ← 4 5 6
C ← 7 8 9

⍝ Predict the results of the following expressions in terms of depth, ranks, and
⍝ shape.

DISPLAY +/A B C

⍝ A B C will be a nested array with three enclosed arrays, and + will be applied
⍝ as A+B+C, i.e., the result will be a nested array (depth 2) with one enclosed
⍝ array that contains this sum.

DISPLAY +/¨A B C

⍝ Here, + will be applied to each of the enclosed arrays individually, and the
⍝ result will be an array of depth 1 that contains the sums of each of the three
⍝ arrays.

DISPLAY 1 0 1/¨A B C

⍝ 1 0 1 is applied to the elements of the vector A B C, i.e., A and C will be
⍝ selected in their entirety, while B will be "zeroed". The result is still a
⍝ nested array of depth 2.

DISPLAY (A B C)⍳(4 5 6)

⍝ The result will have to be 4 4 4 (depth 1), as neither of the numbers 4 5 6 is
⍝ found as an individual (scalar) member in A B C.

DISPLAY 1 10 3∊A

⍝ The result will be 1 0 1 (depth 1), as 1 and 3 are in A, while 10 isn't.

DISPLAY (⊂1 0 1)/¨A B C

⍝ This time, 1 0 1 will be applied to each of the enclosed arrays individually,
⍝ yielding a nested array of depth 2 with the three enclosed arrays each
⍝ riddened of their middle member.

DISPLAY 1 10 3∊A B C

⍝ The result will be 0 0 0 (depth 1), as neither of the three enclosed arrays is
⍝ 1 10 3.
