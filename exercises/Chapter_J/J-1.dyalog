⍝ Chapter J4.3.3 describes a method to compute refunds. Write a function Refund
⍝ that generalises the solution. Don't use loops.

⍝ I didn't quite get the task, so here's another documented walkthrough of the
⍝ book's solution.

∇ R ← Refund (Rates Categories Expenses);newrates;limexp;repay
    ⍝ Turn the rate table into one of actual percentages usable in mathematical
    ⍝ operations. For that, we need to drop the first row from Rates, and take
    ⍝ the difference between the rates by category.
    newrates ← 1↓[1]0.01×Rates-1↓[2]Rates,0

    ⍝ Build a table of all the expenses minimised to the rates. The latter are
    ⍝ found in the first row of Rates.
    limexp ← Expenses∘.⌊Rates[1;]

    ⍝ Obtain the amounts to be repaid by multiplying the categorised expenses
    ⍝ with the usable rate table, and summing the results.
    repay ← +/newrates[Categories;]×limexp

    ⍝ Build the result table.
    R ← Expenses,Categories,[1.5]repay
∇

