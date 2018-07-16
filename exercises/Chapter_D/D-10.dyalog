⍝ Modify the function from D-9 so that it commutes the two letters given in ⍺.

∇ R ← lr Switch2 text;l;r;rpos
    l r ← lr[1 2]
    rpos ← (text=r)/⍳⍴text
    text[(text=l)/⍳⍴text] ← r
    text[rpos] ← l
    R ← text
∇

⍝ The above solution is fairly imperative in thinking, not array oriented. The
⍝ book's solution has all the elegance; I'll reproduce and comment it here.

∇ Z ← X Switch3 Y;pos
    ⍝ Dyadic ⍳ can be used to elegantly obtain all the positions of both letters
    ⍝ in X in Y. By concatenating X with Y, we get a vector that has all the
    ⍝ other letters that aren't in X, so that positions of letters in Y in the
    ⍝ concatenated X,Y will always be correct. Since X is prepended to Y, and
    ⍝ since dyadic ⍳ will always yield the first position at which a letter is
    ⍝ found, positions of the two letters that shall be commuted will be with
    ⍝ respect to X.
    pos ← (X,Y)⍳Y
    ⍝ With that, it is now possible to simply flip the letters by prepending
    ⍝ the flipped X to Y and using the positions to select values from the
    ⍝ resulting vector. Note how pos is a vector of the same shape as Y, so
    ⍝ that the result will have the correct length as well.
    Z ← (X[2 1],Y)[pos]
∇

