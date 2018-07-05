⍝ We have a variable Z and want to know what its value is.

⍝ 2⍴Z is 1 7, i.e., the first two elements of Z, laid out as a 2-element
⍝ vector, are 1 7.

⍝ +⌿Z is 20, i.e., the sum of the elements of Z along the first axis is 20. As
⍝ the first axis is the rows, this suggests there is only one column in Z.
⍝ Hence, it must be a N-by-1 matrix, or a column vector, with 1 7 being the
⍝ contents of the first two rows, respectively.

⍝ Z=9 is (as a column vector) 0 0 1 0, so the third row of Z contains 9. That,
⍝ given the sum of elements in Z is 20, leaves 3 as the contents of the final
⍝ row.

Z ← 4 1 ⍴ 1 7 9 3

