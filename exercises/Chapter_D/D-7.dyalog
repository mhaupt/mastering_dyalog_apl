⍝ Write a monadic function that puts a frame around a text matrix.

⍝ The solution given in the book appears to be wrong. It will not frame the
⍝ matrix as given in the text, i.e.,
⍝    +---+
⍝    |ab |
⍝    |a  |
⍝    |abc|
⍝    +---+
⍝ but instead like this:
⍝    + -   +
⍝    | ab  |
⍝    | a   |
⍝    | abc |
⍝    + -   +
⍝ There are two problems with this:
⍝ 1. There isn't a correct amount of minus signs because a single minus sign is
⍝    prepended and appended, instead of a number of minus signs that corresponds
⍝    to the number of columns in the text matrix.
⍝ 2. The left and right boundaries are added as extra columns rather than being
⍝    prepended and appended to the individual text lines.

∇ FramedText ← Frame Text
∇

