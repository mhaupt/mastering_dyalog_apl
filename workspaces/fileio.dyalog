⍝ Functions for file I/O to substitute functions from the missing workspace
⍝ files.dws.

⍝ Read all text from the file f into a single character vector.
∇ t ← ReadAllText f
    t ← ⊃(⎕nget f)[1]
∇

⍝ Read all text from the file f into individual lines.
∇ l ← ReadAllLines f
    l ← ⊃(⎕nget f 1)[1]
∇

⍝ Write the text in t to the file f. The file is overwritten if it exists.
⍝ Return the number of bytes written.
∇ r ← t PutText f
    ⍝ Not working. Need to transform a M N matrix into a N vector. Careful about
    ⍝ N vectors, don't transform those.
    r ← (⊂t)⎕nput f 1
∇

