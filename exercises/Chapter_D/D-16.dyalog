⍝ Write a function that partitions a string at the positions where a given
⍝ character is found, and returns a matrix containing the partitions as rows.

⍝ The solution draws some inspiration from the book's solution, but the
⍝ algorithmic core is different. The inspirations are mostly about how to
⍝ handle creation and extension of the result matrix.

∇ r ← c Sorry s;i;t;l;p;m
    ⍝ l is simply the length of the input.
    l ← ⍴s
    ⍝ m is the maximum snippet length, used to truncate the columns in the
    ⍝ result matrix.
    m ← 0
    ⍝ r is the result matrix. Initialise it to an empty matrix with no rows and
    ⍝ as many columns as the string has.
    r ← (0,⍴s)⍴''
    ⍝ t is a string of spaces just as long as the input string, used to pad
    ⍝ rows in the result matrix with spaces at the end.
    t ← l⍴' '
    ⍝ i is the next index of c in s.
    i ← s⍳c
    :While i≤⍴s ⍝ An index beyond the length of s indicates we're done.
        ⍝ Keep track of the maximum.
        m ← m⌈i
        ⍝ p is the next part to be added to the matrix.
        p ← s[⍳i-1]
        ⍝ Append it to the result matrix.
        r ← r⍪(p,t)[⍳l]
        ⍝ Shorten the input string.
        s ← s[i+⍳(⍴s)-i]
        ⍝ Fetch the next index.
        i ← s⍳c
    :EndWhile
    ⍝ Truncate the columns.
    r ← r[;⍳m]
∇

