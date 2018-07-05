⍝ The keys for ∧ and ∨ no longer work, but the two vectors 0 0 1 1 and 0 1 0 1
⍝ shall be combined with these functions. (Odd: 0 is the same key as ∧. There
⍝ is something really wrong with that keyboard. It probably wants to be used to
⍝ write code in Lisp.)

A ← 0 0 1 1
B ← 0 1 0 1

⍝ A ∧ B is 0 0 0 1, which can be reached by substituting ∧ with ⌊. Where the
⍝ minimum is chosen, equality of 1s will lead to 1; anything else, to 0.
A⌊B

⍝ A ∨ B is 0 1 1 1, and here we can substitute ∨ with ⌈, for analogous reasons.
A⌈B

