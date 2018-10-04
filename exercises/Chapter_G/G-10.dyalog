XG9 ← 11 8⍴'Emily   Luciano Paul    Oxana   Thor    Carmen  VeronicaWilliam VladimirMonica  Colette '
XG10 ← 22 22 74 74 74 74 30 65 65 65 19

⍝ Write a function that displays, side by side, the XG10 vector of codes and the
⍝ associated matrix of names, with an empty line inserted each time the code
⍝ changes.

⍝ My thinking here was to first come up with a Boolean vector that indicates
⍝ where in the code vector the "phase shifts" happen, and then to turn that into
⍝ a Boolean vector that could be used as an argument to ⍀ to insert the blank
⍝ lines in the matrix. Prepending the columns is a no-brainer using ,
⍝ (Laminate).

⍝ I didn't get too far because my APL-fu was still lacking too much, so I will
⍝ again comment the book's solution, which (at least I got that right) applies
⍝ the solution I sketched on my own.

∇ R ← X Expand Y;bin1;bin2;pos
    ⍝ Find the last positions of a sequence of codes, i.e., mark the positions
    ⍝ after which a "phase shift" happens.
    bin1 ← X≠1↓X,0

    ⍝ Standard idiom: get the positions of the phase shifts.
    pos ← bin1/⍳⍴bin1

    ⍝ This is the genius line.
    ⍝ To apply ⍀, we need a vector of 0 and 1 that has as many elements as there
    ⍝ are elements in X plus the number of phase shifts. The vector pos,X is as
    ⍝ long as that, and ⍳⍴pos,X will create a nice enumeration of that many
    ⍝ elements. We'll call this the expansion indices vector.
    ⍝ The expression pos+⍳⍴pos will yield the indices in the expansion indices
    ⍝ vector at which 0 will have to be found in the expansion vector to insert
    ⍝ a blank line in the matrix.
    ⍝ Using ∊ will give us 1 where the expansion vector should have a 0, so we
    ⍝ have to negate that using ~, and we're done.
    bin2 ← ~(⍳⍴pos,X)∊pos+⍳⍴pos

    ⍝ The rest is simple: laminate the codes, a blank, and the names; and then
    ⍝ insert blank lines into the textual representation of the result of that
    ⍝ using the expansion vector.
    R ← bin2⍀⍕X,' ',Y
∇

