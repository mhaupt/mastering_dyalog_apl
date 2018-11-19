⍝ Calculate these.

∧/ 1 1 1 0 1 1
⍝ Folding ∧ over anything that contains a 0 will be 0.

∧\ 1 1 1 0 1 1
⍝ This one is more tricky. It's 1 1∧1 1∧(1∧1) 1∧(1∧(1∧0)) ..., ergo 1 1 1 0 0 0.

=/ 0 1 1 1 0 1 1
⍝ Nice one; the first (rightmost) comparison will yield 1, then 0=1 yields 0,
⍝ which propagates through the three 1s, then the final (leftmost) 0 will yield
⍝ 0=0 ergo 1.

=\ 0 1 1 1 0 1 1
⍝ 0 0=1 0=1=1 0=1=1=1 0=1=1=1=0 0=1=1=1=0=1 0=1=1=1=0=1=1, ergo 0 0 0 0 1 1 1.

