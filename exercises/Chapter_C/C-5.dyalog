⍝ Given A, find an expression that returns 1 if A is scalar, and 0 if it isn't.

⍝ If A is scalar, ⍴A will be empty, and ⍴⍴A will be 0.
⍝ If A isn't scalar, ⍴A will be non-empty, and ⍴⍴A will be greater than 0.
0=⍴⍴A

