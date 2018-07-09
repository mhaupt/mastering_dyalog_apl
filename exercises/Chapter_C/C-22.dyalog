⍝ The variables mentioned in the exercise are defined in the Dyalog tutor
⍝ workspace, and are hence also available in the journey workspace in this
⍝ repository.

⍝ (a) What are the numbers of the unsold tickets?
⍝ We have all ticket numbers in Tickets, and the numbers of the sold tickets in
⍝ Sold. So we need to get those numbers from Tickets that aren't in Sold. We can
⍝ achieve this by checking which elements of Tickets are in Sold, and then
⍝ using the negated result to compress Tickets.
UnsoldTickets ← (~Tickets∊Sold)/Tickets

⍝ (b) Are there some winning tickets which have not been sold?
⍝ We have the UnsoldTickets, and the unsold winning tickets can be determined
⍝ by doing another element check:
UnsoldWinningTicketsVec ← Winners∊UnsoldTickets

⍝ The question is then answered by applying an OR reduction over this vector.
AreThereUnsoldWinningTickets ← ∨/UnsoldWinningTicketsVec

⍝ (c) How many winning tickets to WE have?
⍝ This is a counting question; we simply sum reduce the element question for
⍝ Ours in Winners.
HowManyWinningTicketsForUs ← +/Ours∊Winners

⍝ (d) How much did we win?
⍝ Here, we need the positions of our winning tickets in the Winners vector, and
⍝ use those to extract the prizes from Prizes, and then sum reduce over that.
⍝ As ⍳ will give us an index beyond the size of Prizes for those tickets that
⍝ aren't ours, let's append 0 to Prizes, since we don't win for those.
OurGain ← +/(Prizes,0)[Winners⍳Ours]

⍝ Looking at the book's solutions after doing this exercise shows me that I'm
⍝ thinking too complicated and haven't yet gotten all the primitive functions
⍝ in all their power. I'll leave my less than optimal solutions here as a
⍝ learning opportunity.

