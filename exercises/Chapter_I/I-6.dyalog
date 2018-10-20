I6Text ← 'This boring text has been typed just for a little experiment'
I6Start ← 6 27 52

⍝ From the text, extract 5 characters long subvectors starting at the positions
⍝ given in the number vector. The result should be one plain character vector.

⎕ml ← 1 ⍝ enable IBM Enlist

∊{5↑(⍵-1)↓I6Text}¨I6Start

⎕ml ← 0 ⍝ back to Dyalog

⍝ The book solution doesn't use the IBM semantics, but is more complex.

