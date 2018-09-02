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
∇ r ← t PutText f;v
    ⍝ We need to make sure the left-hand argument passed to ⎕nput is a vector of
    ⍝ character vectors. We'll assume the rank of the argument is at most 2 (not
    ⍝ tested for other ranks).
    :If 1=⍴⍴t
        ⍝ We have a vector of text vectors, or a plain text vector.
        v ← t
    :Else
        ⍝ Break the matrix into a vector with as many elements as the matrix has
        ⍝ rows.
        v ← ⊂[2]t
    :EndIf
    r ← (⊂v)⎕nput f 1
∇

