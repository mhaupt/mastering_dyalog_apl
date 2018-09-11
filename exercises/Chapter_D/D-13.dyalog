⍝ Write a function that sums the items of a vector using a loop.

∇ sum ← LoopSum vec
    sum ← 0
    :For e :In vec
        sum ← sum + e
    :EndFor
∇

