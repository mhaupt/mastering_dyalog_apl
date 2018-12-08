⍝ Write two functions H2D and D2H that convert hexadecimal strings to decimal
⍝ numbers, and vice versa.

⍝ The gist of decoding a hexadecimal number to a decimal one is to apply 16⊥ to
⍝ the digits. The digits A-F aren't actual digits, but numbers larger than 9.
⍝ These can be found by identifying the indices of the hex digits in a string
⍝ containing all possible hex digits, i.e., '0123456789ABCDEF'⍳hexnum. And we
⍝ need to subtract 1 from these indices to include 0.
h2d ← {16⊥¯1+'0123456789ABCDEF'⍳⍵}

⍝ Now this only works for a single hexadecimal string, so here's the function
⍝ applying it to vectors of strings.
H2D ← {h2d¨⍵}

⍝ Encoding a decimal number as a hexadecimal number of course is done using ⊤,
⍝ and it helps that the length of hexadecimal strings is given as 4 in the
⍝ exercise, i.e., it's (4⍴16)⊤decimal. What remains is understanding the
⍝ resulting vector of numbers as a vector of indices into the alphanumeric
⍝ representation of the possible hexadecimal digits. We need to add 1 to cater
⍝ for 0 occurring at index 1.
d2h ← {'0123456789ABCDEF'[1+(4⍴16)⊤⍵]}

⍝ Again, we need to be able to apply this to a vector of decimal numbers.
D2H ← {d2h¨⍵}

⍝ The book's solution works without ¨ by applying ⊥ and ⊤ to matrices more
⍝ elegantly.

