⍝ Write a function, using Expand (\), that replaces all occurrences of a given
⍝ letter with blanks.

∇ w ← l Whiten p;ls
    ⍝ get a Boolean vector representing where the l letters aren't
    ls ← l≠p
    ⍝ remove the l letters using /, then insert blanks using \
    w ← ls\ls/p
∇

