⍝ The value of cos x can be calculated this formula:
⍝ cos x = x^0/0! - x^2/2! + x^4/4! - x^6/6! + x^8/8! - x^10/10! ...
⍝ Write an APL expression for this, up to the power 2N.

⍝ One of the partial expressions with x as the left-hand argument and a power p
⍝ as the right-hand argument can be computed like so:
part ← {(⍺*⍵)÷!⍵}

⍝ A vector of signs (positive/negative) for the factors in the chain can be
⍝ built like so from with a monadic dfn accepting N:
signs ← {(⍵+1)⍴1 ¯1}

⍝ We can build the part arguments (0 2 4 6 8 10 ...) easily from N using this:
args ← {2×¯1+⍳⍵+1}

⍝ Given this, a vector of factor results (ignoring signs) for x (⍺) and N (⍵)
⍝ can be built like so:
factors ← {⍺ part¨(args ⍵)}

⍝ Computing cos x (⍺) with precision N (⍵) now is applying the signs and summing
⍝ up:
cos ← {+/(signs ⍵)×(⍺ factors ⍵)}

⍝ Of course, the book is way more elegant. Its solution is this:
bookcos ← {(⍺*P)-.÷!P←2×0,⍳⍵}

⍝ It builds the vector of arguments from ⍳⍵ and prepending 0, and then
⍝ multiplying it by 2. This is then saved in P, and the vector of factorials is
⍝ immediately computed as well. The x argument is also powered with P. The
⍝ divisions and subsequent additions/subtractions are elegantly combined using
⍝ -.÷ - I realise my solution is too loopy, using ¨ rather than exploiting
⍝ vectors to a greater degree.

