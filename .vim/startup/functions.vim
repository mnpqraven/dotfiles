function! ToggleWrap()
	if &wrap
		echo "Wrap OFF"
		setlocal nowrap
		set virtualedit=all
	else
		echo "Wrap ON"
		setlocal wrap linebreak nolist
		set virtualedit=
		setlocal display+=lastline
	endif
endfunction

function! ToggleAutoComment()
	if &formatoptions =~ "jqlcro"
		echo "Auto Commenting Disabled"
		setlocal formatoptions-=cro
	else
		echo "Auto Commenting Enabled"
		setlocal formatoptions+=cro
	endif
endfunction
command! MakeTags !ctags -R .
command! Diff Gdiff

function! RRender()
    w
    !echo "require(rmarkdown); render('%')" | R --vanilla
endfunction
