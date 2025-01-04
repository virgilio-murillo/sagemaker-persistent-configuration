" personal github: Virgilio-AI
" linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
" contact: virgiliomurilloochoa1@gmail.com

" =================================
" ========== Paste commands 
" =================================


augroup markdown
	autocmd!
	autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
augroup END



" ==================================================
" =========== vimrc ===================
" ==================================================

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
exe "nnoremap <leader>evs :vsplit " . g:CONFIG_PATH . '/shortcuts.vim'  
exe "nnoremap <leader>evS :vsplit " . g:CONFIG_PATH . '/skeletons.vim'
exe "nnoremap <leader>eva :vsplit " . g:CONFIG_PATH . '/autocmds.vim'  
exe "nnoremap <leader>evp :vsplit " . g:CONFIG_PATH . '/PlugIns.vim'
exe "nnoremap <leader>evc :vsplit " . g:CONFIG_PATH . '/colors.vim'
exe "nnoremap <leader>evh :call OpenVimrcHeaderRelatedFile()" 


" ==================================================
" =========== For editing better ===================
" ================================================== 

" delete current line and go to end of previous
inoremap <C-k> <Esc>VxkA
" for reversing a string better
vnoremap ;rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

" for centering vim
"nnoremap j jzz
"nnoremap k kzz

" for copy paste
nnoremap -Y ggVG"+y
" nnoremap -y "+y
" vnoremap -y "+y

" nnoremap -p "+p
" vnoremap -p "+p
"
nnoremap -p :call PasteCleanNormal()<CR>
vnoremap -p :call PasteCleanVisual()<CR>

vnoremap <c-r> y<ESC>/<c-r>"<CR> 

vnoremap p "_dP
vnoremap d "_d

"set number and set relative number

nnoremap -n :call SetAbsoluteNumber()<CR>
nnoremap -r :call SetRelativeNumber()<CR>
" ---------- and For editing better ----------------




" =================================
" ========== latex shorcuts 
" =================================

augroup Tex_Shortcuts
	autocmd FileType tex nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
	execute 'autocmd FileType tex nnoremap <F10><F10> <Esc>:w<CR>:LLPStartPreview' 
	execute 'autocmd FileType tex inoremap <F10><F10> <Esc>:w<CR>:LLPStartPreview' 
augroup end


"ulti snips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
noremap <leader>es :UltiSnipsEdit



" ----------- end Plug ins key bindings -------------------


" =================================
" ========== browser search 
" =================================

nnoremap gx :AsyncRun st -e sh -c "brave <c-r><c-a>"


autocmd FileType python nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" =================================
" ========== bindings for vim and jupyter notebooks 
" =================================
augroup jupyterNoteBook
	autocmd BufEnter *.sync.py nnoremap <F11> :w<CR>:call jupyter_ascending#execute()<CR>:call jupyter_ascending#execute()<CR>
	autocmd BufEnter *.sync.py nnoremap <F11><F11> :w<CR>:call jupyter_ascending#execute_all()<CR>
	autocmd BufEnter *.sync.py inoremap <F11> <Esc>:w<CR>:call jupyter_ascending#execute()<CR>:call jupyter_ascending#execute()<CR>i
	autocmd BufEnter *.sync.py inoremap <F11><F11> <Esc>:w<CR>:call jupyter_ascending#execute_all()<CR>i



	autocmd BufEnter *.sync.py nnoremap <C-l> $a<CR><Esc>:normal! i# %%<CR>o<Esc>
	autocmd BufEnter *.sync.py nnoremap <C-a> $a<CR><Esc>:normal! i# %% [markdown]<CR>o<Esc>
	autocmd BufEnter *.sync.py inoremap <C-l> <Esc>:normal! i# %%<CR>o<Esc>i
	autocmd BufEnter *.sync.py inoremap <C-a> <Esc>:normal! i# %% [markdown]<CR>o<Esc>i

augroup end



" =================================
" ========== coding competitions 
" =================================

augroup hackerRank_clean
	autocmd!
	autocmd BufEnter *.cpp nnoremap <space>h :call CleanHackerRankFile()
augroup END

" =================================
" ========== compile and run html 
" =================================

augroup html_compile
	autocmd!
"	autocmd FileType html nnoremap <F11> :w<CR>:call RunHtml()
	autocmd FileType html nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
augroup END

" =================================
" ========== python bindings 
" =================================
augroup PYTHON
	autocmd BufEnter *.py nnoremap ff :call FormatPythonCode()<CR>
	exe 'autocmd BufEnter *.py nnoremap <leader>df :w<CR>:AsyncRun st -T "floating" -g "=150x50" -e sh -c "python -m pudb %:p"'
augroup END

