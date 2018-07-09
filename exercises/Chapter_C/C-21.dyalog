⍝ Here are two vectors of warez codes and corresponding prices.
PCodes ← 56 66 19 37 44 20 18 23 68 70 82
Prices ←  9 27 10 15 12  5  8  9 98  7 22

⍝ Here's a customer's shopping list, with codes and quantities interleaved.
Wannabuy ← 37 1 70 20 19 2 82 5 23 10

⍝ Compute the customer's bill. The correct answer is 375.

⍝ Wannabuy is essentially a sequence of tuples. We can write that as a 2-row
⍝ matrix (row 1: codes, row 2: quantities) like so:
CodesAndQuantities ← ⍉ 5 2 ⍴ Wannabuy

⍝ Now, find the positions of the Wannabuy codes in the PCodes vector, and
⍝ extract the corresponding prices.
WannabuyPositions ← PCodes ⍳ CodesAndQuantities[1;]
WannabuyPrices ← Prices[WannabuyPositions]

⍝ Multiply that by the desired quantities.
WannabuySums ← WannabuyPrices × CodesAndQuantities[2;]

⍝ Finally, compute the total.
Total ← +/WannabuySums

⍝ The book suggests it's not possible to do this in one single and readable
⍝ expression. Let's ignore the readability aspect for a moment.

⍝ There's code duplication because CodesAndQuantities is used twice. Another way
⍝ to extract only the codes and quantities from Wannabuy is this:
wbCodes ← (10 ⍴ 1 0) / Wannabuy
wbQuantities ← (10 ⍴ 0 1) / Wannabuy

⍝ If we use these in the following, we get new positions, prices, sums, and
⍝ total:
wbPositions ← PCodes ⍳ wbCodes
wbPrices ← Prices[wbPositions]
wbSums ← wbPrices × wbQuantities
wbTotal ← +/ wbSums

⍝ And this makes it possible to write the entire job in one expression.
+/(Prices[PCodes⍳(10⍴1 0)/Wannabuy])×(10⍴0 1)/Wannabuy

⍝ Admittedly, this isn't ideal as the length of Wannabuy is hardwired into the
⍝ code. Let's get rid of that.
+/(Prices[PCodes⍳((⍴Wannabuy)⍴1 0)/Wannabuy])×((⍴Wannabuy)⍴0 1)/Wannabuy

⍝ The book's solution is different, of course, but TIMTOWTDI. :-)

