⍝ Check if all items of a vector are different. Provide 2 solutions; one with
⍝ outer product, one with inner product.

v1 ← 1 3 5 2 4 6
v2 ← 1 3 5 2 4 5

⍝ Using outer product (and it's a bit lame), v∘.=v will have 1s only on the
⍝ diagonal if all elements are different. Sum those up and compare to the length
⍝ of v to get the result.
alldiffo ← {(⍴⍵)=+/,⍵∘.=⍵}

⍝ The book suggests ∧/1=+/⍵∘.=⍵ - makes sense too.

⍝ I was too stupid to come up with a solution involving inner product, so here's
⍝ the book's solution with an explanation.
alldiffi ← {(⍵⍳⍵)∧.=⍳⍴⍵}

⍝ ⍳⍴⍵ will simply give the list of integers as long as ⍵; and ⍵⍳⍵ will, true to
⍝ dyadic ⍳, yield the indices of all the first occurrences of a value in ⍵. The
⍝ inner product then takes these indices and the list of all indices, and first
⍝ compares them, then folds an ∧ over the result. In case there is a duplicate
⍝ index in ⍵⍳⍵, there will be an inequality in the comparison, and the folded ∧
⍝ will be 0.

⍝ It's quite a nice move to operate in terms of indices rather than values here.

