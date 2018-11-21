⍝ What's the result of this expression?

2=/'MASSACHUSSETTS'

⍝ The typo aside, this applies a "sliding window" equality check to the string,
⍝ with a window size of 2. That is, tuples of adjacent letters in the string
⍝ will be compared, and the result will be a Boolean vector one element shorter
⍝ than the string, with the results of these comparisons. There will be 3 1s in
⍝ the result: 0 0 1 0 0 0 0 0 1 0 0 1 0.

