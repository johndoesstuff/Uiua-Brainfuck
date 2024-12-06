# Experimental!
Code     ← "++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++."
Registry ← ×0⇡256
MemHead  ← 0
CodeHead ← 0
Out      ← ""
Add      ← ⊸(◿256+=⇡⧻⟜:)
Sub      ← ⊸(◿256-=⇡⧻⟜:)
Inc      ← (:◿256+1:)
Dec      ← (:◿256-1:)
OpenB    ← ()
CloseB ← (
  ⨬(⊙⊙◌⊙⊙(⊙(⊣⊚=0⇌\+⇌↙):⊸+1)⊸⊙⊙⊙(+¯=@[⟜(=@])) # return to previous [
  | ∘
  ):⟜⊸(=0⊡:)
)
Put ← ⊙⊙⊙⊙(⊂:)⊙⊙⊙:⊙⊙:⊙::°utf₈⊸(⊸⊡:) # dip hell

Step ← (
  :⊙:⊙⊙:⊙⊙⟜⊸(⊡) # get character
  ⊗:"+-><[]."   # determine instruction type
  ⨬(Add|Sub|Inc|Dec|OpenB|CloseB|Put)
  ⊙⊙(+1) # increment codehead
)

Registry MemHead CodeHead Code Out
⍢(Step|:⊙:⊙⊙:⊙⊙(⟜>⊙⊸⧻))
