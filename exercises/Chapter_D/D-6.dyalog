⍝ Write a dyadic function that produces the series of integer values between
⍝ the limits given by its two arguments.

∇ Range ← Start To End
    Range ← (Start-1)↓⍳End
∇

⍝ Naively speaking, this solution is a memory hog because it first creates the
⍝ complete vector including all elements that will be discarded because they're
⍝ smaller than the Start.
⍝ The book's solution is smarter; it only generates a vector that is as large
⍝ as it needs to be in the first place, and then adds the start to it.

