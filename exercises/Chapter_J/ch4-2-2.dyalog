Left ← ↑'DIMITRI' 'GUNTHER'
Right ← 'VERONICA'

⍝ In chapter J4.2.2, the Left and Right values above are used to demonstrate how
⍝ Outer Product can be used to show where different names share the same
⍝ characters:

Left∘.=Right

⍝ The result is a mere matrix, it does not show the names. There's a little
⍝ bonus exercise in that chapter that goes like this: "try to produce the same
⍝ display, with the arguments actually included in the result as shown here".
⍝ This can be achieved like so:

(' ',((2×⍴Right)⍴0 1)\Right)⍪⎕fmt Left,Left∘.=Right

⍝ Prepending the two names from Left to the matrix is easily done by just using
⍝ catenate. A 2D matrix with the textual representation can be obtained using
⍝ ⎕fmt. The remainder of the job is to Expand Right by inserting blanks so that
⍝ the result can be prepended using ⍪.

