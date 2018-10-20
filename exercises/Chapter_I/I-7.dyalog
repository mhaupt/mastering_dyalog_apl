I6Text ← 'This boring text has been typed just for a little experiment'
I6Start ← 6 27 52
I6Long ← 3 8 4

⍝ From the text, extract as many characters long subvectors as given in I6Long
⍝ starting at the positions given in the number vector. The result should be one
⍝ plain character vector.

⎕ml ← 1 ⍝ enable IBM Enlist

∊I6Long{⍺↑(⍵-1)↓I6Text}¨I6Start

⎕ml ← 0 ⍝ back to Dyalog

⍝ The book solution doesn't use the IBM semantics, but is more complex.

