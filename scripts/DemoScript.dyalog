⍝ From chapter R1.1.3.

:Namespace Simple

Nested ← 'My name is Bond' 0 0 7

∇ m ← average val;s;n
    s ← +/val
    n ← ⍴val
    m ← s÷n
∇

Primes ← {(~v∊1 1↓v∘.×v)/v←⍳⍵}

Airports ← ↑'LGW' 'CDG' 'CPH' 'KBP' 'DKR'

RounDefault ← 2

∇ Res ← N Round Val
    Res ← ⌊0.5+Val×10*N
    Res ← Res÷10*N
∇

∇ R ← CloseRound Y;RndSum;SumRnd;Diff;Great
    RndSum ← ⌊0.5++/Y
    SumRnd ← +/R←⌊0.5+Y
    Diff ← RndSum-SumRnd
    Great ← ⍒,Y
    R[(|Diff)↑Great] +← ×Diff
∇

∇ r ← a Plus b
    r ← a+b
∇

:EndNamespace

