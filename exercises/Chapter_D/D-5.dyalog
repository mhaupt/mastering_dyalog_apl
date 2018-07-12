⍝ Write a monadic function that returns the lengths of the words contained in a
⍝ text vector.

∇ L ← Lengths Text;spaces
    ⍝ get a vector of all the spaces
    spaces←(Text=' ')/⍳⍴Text
    ⍝ Get two vectors, one with the space indices plus one beyond Text's length,
    ⍝ and one with 0 prepended to the space indices. These are necessary to
    ⍝ be able to compute the lengths of the last and first words. Subtract these
    ⍝ from each other, subtract 1, be done.
    L←((spaces,1+⍴Text)-0,spaces)-1
∇

