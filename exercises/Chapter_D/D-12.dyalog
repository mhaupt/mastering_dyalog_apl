⍝ Program a function that makes the conversion Celsius to Fahrenheit or vice
⍝ versa depending on its right argument ('C-F' or 'F-C').

Convert ← {
    ⍵≡'C-F': 32+9×⍺÷5
    ⍵≡'F-C': 5×(⍺-32)÷9
    'whut?'
}

⍝ The book proposes a procedural function that operates with a less safe method
⍝ to match the right-hand argument. I personally like the pattern-matchy density
⍝ of this d-fn a lot.

