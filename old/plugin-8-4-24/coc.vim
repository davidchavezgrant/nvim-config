 function! s:cocActionsOpenFromSelected(type) abort
   execute 'CocCommand actions.open ' . a:type
 endfunction
 xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
 nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
   else
     call CocAction('doHover')
   endif
 endfunction

 nnoremap <silent> K :call <SID>show_documentation()<CR>
 autocmd FileType ts nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
 autocmd FileType html nmap <silent> gd :call CocActionAsync('jumpDefinition')<CR>
