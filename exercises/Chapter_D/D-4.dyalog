⍝ Write a monadic function that appends row and column totals to a numeric
⍝ matrix.

∇ R ← Totalise Mat
    ⍝ compute row totals and append as new column to Mat
    R ← Mat,+/Mat
    ⍝ compute column totals of the new matrix and append as new row
    R ← R⍪+⌿R
∇

⍝ The book's solution uses local variables, and only / and , - not their
⍝ ⌿ and ⍪ variants.

