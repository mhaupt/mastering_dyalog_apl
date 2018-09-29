⍝ Write a dyadic function that centres a title atop a character matrix.

∇ mat ← title OnTop mat;w;d;t;s
    mat ← ⍕mat           ⍝ use the textual representation
    w ← (⍴mat)[2]        ⍝ the width of the matrix
    d ← w⍴'-'            ⍝ this many dashes for the title line
    s ← ⌊(w-⍴title)÷2    ⍝ this many spaces before the title
    t ← w⍴' '            ⍝ prepare the title line
    t[s+⍳⍴title] ← title ⍝ fill in the title
    mat ← t⍪d⍪mat        ⍝ prepend title and dashes to the matrix
∇

