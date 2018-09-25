⍝ Write a function that "highlights" all the vowels of a given character vector
⍝ by placing an arrow under them.

∇ res ← ShowVowels vec;pos;arrows
    ⍝ Put the positions of the vowels in pos.
    pos ← vec∊'AEIOUYaeiouy'
    ⍝ Now build a vector of arrows where there are vowels.
    arrows ← pos\'↑'
    ⍝ Finally, add the arrows below the text and return the (now) matrix.
    res ← vec,[0.5]arrows
∇

⍝ Because it's so much fun, here's a dfn.

ShowVowels2 ← { ⍵,[0.5](⍵∊'AEIOUYaeiouy')\'↑' }

