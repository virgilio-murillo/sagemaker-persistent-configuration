

function SetXonsh()
	if getline(1) =~'#!/usr/bin/xonsh'
		set filetype=xonsh
	endif
endfunction


"function ChangeTRWText()
"	:%s/\.//g
"	:%s/\,//g
"	:normal! ggVGU
"endfunction

" augroup theRealWorld
" 	autocmd!
" 	autocmd BufWritePost *.trw call ChangeTRWText()
" endfunction


augroup xonsh
	autocmd!
	autocmd BufNewFile,BufRead * call SetXonsh()
augroup END

" snippets
"
augroup snippets
	autocmd!
	autocmd BufEnter *.snippets set foldmethod=marker
augroup END






" =================================
" ========== For competitive programing 
" =================================
" Highlight the symbol and its references when holding the cursor.

augroup onEnterc
	autocmd!
	au FileType c,cpp call CreateCppDotFiles()
augroup END
" =================================
" ========== for python 
" =================================
augroup python
	autocmd!
	" Add shiftwidth and/or softtabstop if you want to override those too.
	autocmd FileType python setlocal noexpandtab shiftwidth=3 tabstop=3
	autocmd FileType python let g:PasteImageFunction = 'g:PythonPasteImage'

	autocmd FileType python let g:ale_set_hightlihgts = 0
augroup end


" =================================
" ========== install vim plug ins on startup 
" =================================
augroup ViEnter
	autocmd!
	autocmd VimEnter *
				\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
				\|   PlugInstall --sync | q
				\| endif
augroup end

" shortcuts for hacker rank
" =================================
" ========== Mark Down 
" =================================
augroup markdown_autocmd
	autocmd FileType markdown let g:PasteImageFunction = 'g:MarkdownPasteImage'
augroup END

" =================================
" ========== latex 
" =======================
augroup tex_autocmds
	autocmd FileType tex let g:PasteImageFunction = 'g:LatexPasteImage'
augroup END

" =================================
" ========== html 
" =================================
augroup htmlAutoCommands
	autocmd FileType html let g:PasteImageFunction = 'g:HtmlPasteImage'
augroup END

" =================================
" ========== c# 
" =================================
augroup csharpAutoCommands
	autocmd!
	autocmd BufWinEnter *.cs silent! call FormatTheFile()
augroup END
