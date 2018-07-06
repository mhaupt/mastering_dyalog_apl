⍝ Given a vector Vec of any size and type, extract the items of Vec that are in
⍝ the odd positions (1, 3, 5, ...).

Vec ← 3 5 ⍴ 1 2 3 ⍝ just as an example ...

⍝ We can turn Vec into a flat vector using ravel (,Vec).

⍝ We need to build a vector of 1 0 1 0 ... until the max index of Vec. In case
⍝ there is an odd number of elements in Vec, there need to be more 1s than 0s.
⍝ We can get that vector simply from (⍴,Vec)⍴1 0.

⍝ Then, the elements can be extracted using compress (/).

((⍴,Vec)⍴1 0)/,Vec

⍝ The book doesn't use ravel; it was not clear to me that the shape of the
⍝ elements should be preserved.

((⍴Vec)⍴1 0)/Vec

⍝ But then my solution works for matrices, unlike the one from the book. Then
⍝ again, the book didn't ask for matrices, but just for vectors. Oh well. :-)

