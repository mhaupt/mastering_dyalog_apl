XG7 ← 3 9⍴'oeornlhtu n siduothf uogYti'

⍝ Applying the following expression will yield what answer?
⍝    ¯3 ¯1 3⌽(-2 1 0 1 0 2 1 2 0)⊖XG7

⍝ ⊖ will rotate the columns.
⍝ The vector (-2 1 0 1 0 2 1 2 0) is actually ¯2 ¯1 0 ¯1 0 ¯2 ¯1 ¯2 0 (note the
⍝ unary - that negates the entire vector!), so each of the columns will be
⍝ rotated by the given amount. For instance, the final column will be left
⍝ unchanged.
⍝ This leads to ...
⍝     foundYou
⍝    he rightt
⍝    on soluti

⍝ ⌽ will rotate the rows.
⍝ Since a different rotation factor is given for each row, they will be rotated
⍝ by different amounts, e.g., the first will be rotated 3 to the right, moving
⍝ "You" to the front.
⍝ This leads to ...
⍝    You found
⍝    the right
⍝    solution

