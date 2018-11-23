⍝ Try to find a word in a vector of characters, give the positions where the
⍝ word occurs. Don't use loops.

In ← {((⍴⍺)=+⌿(¯1+⍳⍴⍺)⌽⍺∘.=⍵)/⍳⍴⍵}

⍝ This solution uses outer product followed by shifts by increasing numbers to
⍝ move the 1 cascades of matches on columns. Summing up the columns yields
⍝ values of the length of the word in question in those positions where the
⍝ word was found, so finding the positions of those sums is the rest.

⍝ The book's first solution is almost precisely this (makes me proud), but the
⍝ book avoids the unnecessary step of summing up by folding a ∧ over the columns
⍝ and thereby finding the positions of columns of 1s (makes me humble).

⍝ Still, the book offers a procedural function implementation. Here's a dfn with
⍝ the same logic:

In2 ← {(∧⌿(¯1+⍳⍴⍺)⌽⍺∘.=⍵)/⍳⍴⍵}

