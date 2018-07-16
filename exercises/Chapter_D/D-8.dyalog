⍝ Make sure the solution from D-7 also works for plain character vectors.

⍝ The job here is to turn the text into an 1-by-N matrix, which is already
⍝ handled correctly.

⍝ That is, in the very first step, we need to reshape Text to 1-by-N, but only
⍝ if its rank is 1. In all other cases, the reshape should be an identity
⍝ operation.
⍝ More concretely, reshape from shape ... to ...:
⍝    N   -> 1 N
⍝    M N -> M N
⍝ Ergo, we construct a vector that contains 1 1 and then the shape of Text ...
⍝    N   -> 1 1 N
⍝    M N -> 1 1 M N
⍝ ... and then use the rank plus offset to index into that vector ...
⍝    N   -> 1 1 N   -> indices 2 3 -> 1 N
⍝    M N -> 1 1 M N -> indices 3 4 -> M N
⍝ ... we get the desired shape.

∇ FramedText ← Frame3 Text;nr;nc
    FramedText ← ((1 1,⍴Text)[(⍴⍴Text) + 1 2]) ⍴ Text
    FramedText ← ⊃ (2 ⍴ (↑,FramedText) FramedText)[2 ⌊ (⍴FramedText)[2]]
    FramedText ← ⊃ (2 ⍴ (((⍴FramedText),1)⍴FramedText) FramedText)[⍴⍴FramedText]
    FramedText ← (⎕UCS 9472),[1]FramedText,[1](⎕UCS 9472)
    FramedText ← (⎕UCS 9474),[2]FramedText,[2](⎕UCS 9474)
    nr nc ← ⍴FramedText
    FramedText[(1 1) (1 nc) (nr 1) (nr nc)] ← ⎕UCS 9484 9488 9492 9496
∇

