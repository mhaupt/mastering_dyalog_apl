⍝ The base64 workspace contains the journey towards these two dfns to implement
⍝ base64 encoding and decoding. I'm very sure the style is clumsy and could be
⍝ way more elegant, but here they are, with commentary.

⍝ This table is used to look up base64 encoding and decoding.

table ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'



⍝ Base64 encoding in a dfn works like this.
⍝
⍝ The text to be encoded (⍵) is converted to its binary representation using
⍝ 11⎕dr, which simply casts the character vector to a bit vector. This is stored
⍝ in bits.
⍝
⍝ A commuted ravel (,⍨) is used for elegance and because we can more easily
⍝ compute ⍴bits that way to determine the number of zero bits that need to be
⍝ appended for padding. This number is determined using some modulo arithmetic,
⍝ and the padded bit vector is again stored in bits.
⍝
⍝ The bit vector is partitioned into 6-bit pieces using dyadic ⊂, and each of
⍝ these pieces is then converted to a decimal number using 2⊥.
⍝
⍝ After adding 1, those numbers can be used as indices into the encoding table.
⍝ The resulting character vector is stored in r.
⍝
⍝ We're not done yet, as the result needs to be padded with = characters. This
⍝ is once more done using commuted ravel and modulo arithmetic to determine the
⍝ number of padding characters.

b64enc ← {((2-4|2+⍴r)⍴'='),⍨r←table[1+2⊥¨((⍴bits)⍴1,(5⍴0))⊂bits←((4-6|4+⍴bits)⍴0),⍨bits←11⎕dr⍵]}



⍝ Base64 decoding in a dfn works like this.
⍝
⍝ We get rid of any trailing padding = characters using /, and then map the
⍝ remaining characters to their indices in the base64 encoding table using
⍝ dyadic ⍳ (not forgetting to subtract 1).
⍝
⍝ These indices are converted to binary representation (6 bits each) using ⊤,
⍝ and we need to transpose the resulting matrix before ravelling it into one
⍝ long bit vector, which is stored in bits.
⍝
⍝ From this vector, trailing padding zero bits need to be removed, and this is
⍝ done by computing, from the length of bits, the next smallest multiple of 8,
⍝ and taking (↑) as many bits, storing the result in bits again.
⍝
⍝ Using dyadic ⊂ like in the encoding dfn, 8-bit partitions of the bit vector
⍝ are converted to decimal numbers, which are then used as arguments to ⎕ucs to
⍝ yield a character string.

b64dec ← {⎕ucs 2⊥¨((⍴bits)⍴1,(7⍴0))⊂bits←(8×⌊(⍴bits)÷8)↑bits←,⍉(6⍴2)⊤¯1+table⍳(⍵≠'=')/⍵}
