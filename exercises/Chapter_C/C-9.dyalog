G ← 1 1 1 0 0 1
M ← 0 0 1 1 0 1
D ← 1 0 1 0 1 0

⍝ G∨D must be 1 1 1 0 1 1.

⍝ ~G∧D first is 1 0 1 0 0 0, then 0 1 0 1 1 1.

⍝ ~G∨~D first negates D to 0 1 0 1 0 1, then is 1 1 1 1 0 1, then 0 0 0 0 1 0.

⍝ D∧~G first negates G to 0 0 0 1 1 0, then is 0 0 0 0 1 0.

⍝ G∧M∨D first is M∨D, i.e., 1 0 1 1 1 1, then 1 0 1 0 0 1.

⍝ (~D)∧(~G) negates both D and G, then applies ∧, yielding 0 0 0 1 0 0.

⍝ (M⌈G)=(M⌊D) - we have seen in C-8 that ⌈⌊ substitute ∨∧. M⌊D is the same as
⍝ M∧D, i.e., 0 0 1 0 0 0; and M⌈G, the same as M∨G, i.e., 1 1 1 1 0 1. The
⍝ result then is 0 0 1 0 1 0.

⍝ (M⌊G)≠(M⌈D) - applying the same insight, M⌈D is 1 0 1 1 1 1; and M⌊G,
⍝ 0 0 1 0 0 1, leading to 1 0 0 1 1 0.

