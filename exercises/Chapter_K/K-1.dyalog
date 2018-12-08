⍝ Predict and explain the results of these two expressions.

0 ⊥ 12 34 60 77 19
⍝ The result will be 19, because the weights compute to 0 0 0 0 1 via
⍝ ⌽1,×\⌽1↓5⍴0 - and the computation behind ⊥ is 0 0 0 0 1+.×12 34 60 77 19.

1 ⊥ 12 34 60 77 19
⍝ Here, the result will be effectively +/12 34 60 77 19, ergo 202, because the
⍝ weights - via ⌽1,×\⌽1↓5⍴1 - will be 1 1 1 1 1. The ensuing computation
⍝ 1 1 1 1 1+.×12 34 60 77 19 then is effectively a sum fold over the values.

