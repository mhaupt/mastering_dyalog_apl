⍝ For the Status and Gender vectors in the journey workspace, write a function
⍝ that counts how many people there are in each category (or combination of
⍝ categories).

⍝ I couldn't come up with a solution, and found that I had forgotten about ⍋. In
⍝ a nutshell, ⍋ will yield indices for a vector that would sort its contents in
⍝ ascending order. The solution also uses ∪ (which I also had forgotten about),
⍝ which removes duplicates from a vector.

⍝ Here is the book's solution, with commentary.

∇ R ← X CrossCount Y;ux;uy;binx;biny
    ⍝ Bring the available categories to sorted order. Using ∪, each category
    ⍝ will occur only once, and applying ⍋ to that vector of available
    ⍝ categories will sort them alphabetically.
    ux ← ∪X ⋄ ux ← ux[⍋ux]
    uy ← ∪Y ⋄ uy ← uy[⍋uy]

    ⍝ Build two Boolean matrices that show which categories occur where in the
    ⍝ inputs.
    binx ← ux∘.=X
    biny ← Y∘.=uy

    ⍝ Use inner product to logical-and the matrices (yielding overlaps of the
    ⍝ categories) and then sum up the occurrences of such overlaps.
    R ← binx+.∧biny

    ⍝ Add legends.
    R ← (' ',uy)⍪ux,R
∇

