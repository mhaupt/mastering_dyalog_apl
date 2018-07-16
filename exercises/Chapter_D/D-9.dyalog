⍝ Write a function that replaces one letter by another in a text vector. The
⍝ letter to replace is given first in ⍺, the replacing letter is given second
⍝ in ⍺; the text in which to replace is given as ⍵.

∇ R ← lr Switch1 text;l;r
    l r ← lr[1 2]
    text[(text=l)/⍳⍴text] ← r
    R ← text
∇

