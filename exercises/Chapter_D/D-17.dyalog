⍝ Given any positive integer N, derive from it a series of values like this:
⍝ The first item is N.
⍝ If the current value of N is even, the next value is N÷2.
⍝ If it's odd, the next value is 1+3×N.
⍝ The final value will be 1.

⍝ Let's write a dfn with no loops.

Syracuse ← {
    N ← (,⍵)[⍴,⍵] ⍝ The last element of ⍵, or ⍵ itself, is N.
    N=1:   ⍵      ⍝ We're done.
    0=2|N: ⍵,∇N÷2 ⍝ Even case.
    ⍵,∇1+3×N      ⍝ Uneven case.
}

