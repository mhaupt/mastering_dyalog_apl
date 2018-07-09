⍝ Can you calculate all the divisors of an integer number N?

⍝ Yes.











⍝ Oh, that wasn't the point? ;-) All right then, here we go.

⍝ The largest possible divisor of an integer number N is N/2 (rounded down in
⍝ case N is odd). We can build a vector of all the possible divisors and then
⍝ check for which, if N is divided by them, the residue is 0. We can use the
⍝ resulting Boolean vector to compress the same vector of possible divisors.

N ← 125

(0=(⍳⌊N÷2)|N)/⍳⌊N÷2

