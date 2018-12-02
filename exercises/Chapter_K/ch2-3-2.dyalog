⍝ In chapter K2.3.2, ⊥ is used to compute polynomials, which is of course a more
⍝ elegant way than using the equivalent expression (1.2*4 3 2 1 0)+.×3 0 2 ¯7 2
⍝ that is described there. Still, that solution can be generalised into a neat
⍝ dfn like so:

polynomial ← {(⍺*⌽¯1+⍳⍴⍵)+.×⍵}

⍝ ... and the example from the book then looks like this:

1.2 polynomial 3 0 2 ¯7 2

