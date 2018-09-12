⍝ Write a function that inserts, in a numeric matrix with N columns, subtotals
⍝ after each group of G columns (where G is a divisor of N).

∇ M ← G SubSum M;R;N;E
    (R N) ← ⍴M  ⍝ number of rows and columns
    E ← ×/⍴M    ⍝ number of elements in M (or use ⍴,M)

    ⍝ Reshape M so that it fits in G columns only, with the necessary number of
    ⍝ rows to contain all the values.
    M ← ((E÷G) G)⍴M

    ⍝ Concatenate, on the right, the totals of each row.
    M ← M,+/M

    ⍝ Reshape to obtain the final result.
    M ← (R (N+N÷G))⍴M
∇

