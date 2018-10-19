I4Ref ← 47 47 83 83 83 83 83 29 36 36 36 50 50
I4Qty ←  5  8  3 18 11  1  6 10 61 52 39  8 11

⍝ How many items of each reference code have been sold? Use Partition.

⍝ Here's a function that will return a partition vector for a vector.

Part ← {1,(1↓⍵)≠¯1↓⍵}

⍝ Here's proof.

DISPLAY (Part I4Ref)⊂I4Ref

⍝ Applying the partition vector to the quantities and summing over the
⍝ partitions will yield the desired result.

+/¨(Part I4Ref)⊂I4Qty

