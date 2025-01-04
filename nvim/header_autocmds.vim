" =================================
" ========== change modifiable 
" =================================

" function UpdateModifiable()
"   if !exists("b:setmodifiable")
"     let b:setmodifiable = 0
"   endif
"   if &readonly
"     if &modifiable
"       setlocal nomodifiable
"       let b:setmodifiable = 1
"     endif
"   else
"     if b:setmodifiable
"       setlocal modifiable
"     endif
"   endif
" endfunction






function! CreateCppDotFiles()
	if !empty(".ccls")
		:!echo "clang++" > .ccls
		:!echo "\%h \%cpp -std=c++17" >> .ccls
	else
	endif
endfunction

" =================================
" ========== Latex 
" =================================

function! g:LatexPasteImage(relpath)
    execute "normal! i\\includegraphics{" . a:relpath . "}\r\\caption{I"
    let ipos = getcurpos()
    execute "normal! a" . "mage}"
    call setpos('.', ipos)
    execute "normal! ve\<C-g>"
endfunction


function! FormatTheFile()
	execute "normal! ggVG="
endfunction

function! FormatCAvrExit()
	let l:Line = line(".")
	let l:Column = col(".")
	sleep 100m
	:% s/\(\d\)_\(\d\)/\1\2/g
	sleep 100m
	:w!
	sleep 100m
endfunction

function! FormatCAvrEnter()
	let l:Line = line(".")
	let l:Column = col(".")
	sleep 100m
	:% s/0b\(\d\d\d\d\)\(\d\d\d\d\)/0b\1_\2/g
	sleep 100m
	:w!
	sleep 100m
endfunction
