# Long Cuts

This is a minimal snippet framework for Vim.  I use it to easily input named unicode codepoints.  (This is handy, for example, if you are using [coquille](https://github.com/the-lambda-church/coquille))

## Install

*  Install pathogen.
*  `cd ~/.vim/bundle`
*  `git clone https://github.com/jackolantern/vim-longcuts.git`

## Configure

In my `.vimrc` I have the following:

```vim
...

map <C-Space> :call BufReplace()<CR>

...

" Configure LongCuts
let g:LongCuts = {
    \   '\N' : 'ℕ ',
    \   '\P' : 'ℙ ',
    \   '\Q' : 'ℚ ',
    \   '\R' : 'ℝ ',
    \   '\Z' : 'ℤ ',
    \   '\not' : '¬',
    \   '\neq' : '≠',
    \   '\lambda' : 'λ',
    \   '\aleph' : 'ℵ ',
    \   '\uarrow' : '↑',
    \   '\darrow' : '↓',
    \   '\larrow' : '←',
    \   '\rarrow' : '→',
    \   '\iff' : ' ↔ ',
    \   '\forall' : '∀ ',
    \   '\complement' : '∁ ',
    \   '\partial' : '∂',
    \   '\exists' : '∃',
    \   '\notexists' : '∄ ',
    \   '\empty' : '∅',
    \   '\Delta' : '∆',
    \   '\Nabla' : '∇ ',
    \   '\In' : '∈',
    \   '\Notin' : '∉ ',
    \   '\in' : '∊',
    \   '\tomb' : '∎',
    \   '\Pi' : '∏ ',
    \   '\Coproduct' : '∐ ',
    \   '\Sigma' : '∑ ',
    \   '\astrix' : '∗ ',
    \   '\composition' : '∘',
    \   '\bullet' : '∙',
    \   '\sqrt' : '√',
    \   '\cubert' : '∛ ',
    \   '\proportional' : '∝ ',
    \   '\inf' : '∞',
    \   '\rangle' : '∟',
    \   '\angle' : '∠ ',
    \   '\divides' : '∣',
    \   '\notdivides' : '∤',
    \   '\parallel' : '∥',
    \   '\notparallel' : '∦',
    \   '\and' : '∧',
    \   '\or' : '∨',
    \   '\intersection' : '∩',
    \   '\triplebar' : '≡',
    \   '\nottriplebar' : '≢ ',
    \   '\therefore' : '∴',
    \   '\turnstile' : '⊢ ',
    \   '\top' : '⊤ ',
    \   '\bottom' : '⊥ ',
    \   '\entails' : '⊧',
    \   '\inv' : '⁻¹',
    \}
```
