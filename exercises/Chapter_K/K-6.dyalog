⍝ Get a vector of 5 items from this list, no dupes.

List ← 12 29 5 44 31 60 8 86

⍝ We need to simply get 5 values from (including) 1 to the length of the list,
⍝ no dupes, and use those as indices.

List[5?⍴List]

