
call plug#begin('~/.config/nvim/PlugIns/')

" for color and personalization

Plug 'luochen1990/rainbow' " for colors in brackets and operators
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons' "vim icons for windows 10

" =================================
" ========== for debbuging 
" =================================

" functionalities
Plug 'skywind3000/asyncrun.vim' "for Asyncrinous features
Plug 'junegunn/fzf', { 'do': './install --all' } | Plug 'junegunn/fzf.vim' " fzf for vim, search buffers etc
Plug 'junegunn/vim-peekaboo' " for showing registers before pasting anything
Plug 'ferrine/md-img-paste.vim' " paste files from clipboard into vim

" git integration
Plug 'tpope/vim-fugitive' " to see diff files

" snippets
Plug 'SirVer/ultisnips' " for snippets
" for latex
Plug 'xuhdev/vim-latex-live-preview' " for latex previews

" for html code
Plug 'mattn/emmet-vim'



" plugisn for c# and unity
Plug 'OmniSharp/omnisharp-vim'


" for colors in vim
Plug 'KabbAmine/vCoolor.vim'


" water Linux plugins
Plug 'Virgilio-AI/vim-code-runner'


" edit terminal in neovim
Plug 'brettanomyces/nvim-editcommand'


" preview colors
Plug 'ObserverOfTime/coloresque.vim'

" for the terminal
Plug 'kassio/neoterm'

" for interface of neovim and leetcode
Plug 'Virgilio-AI/leetcode-neovim'


" for expanding skeletons for neovim
Plug 'Virgilio-AI/skeleton_neovim'



" for the sql
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'


" xonsh python
Plug 'linkinpark342/xonsh-vim'

call plug#end()

