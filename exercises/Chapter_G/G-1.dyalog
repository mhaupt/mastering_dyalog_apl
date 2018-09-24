XG1 ← 3 5⍴1 9 5 3 6 5 4 8 2 3 7 7 6 2 6

⍝ Produce, from XG1, the following three matrices, first using only ↑, then
⍝ only using ↓.

M1a ← 2 ¯3↑XG1
M1b ← ¯1 2↓XG1

M2a ← ¯2 4↑XG1
M2b ← 1 ¯1↓XG1

M3a ← ¯3↑[2]4↑[2]XG1
M3b ← 1↓[2]¯1↓[2]XG1

