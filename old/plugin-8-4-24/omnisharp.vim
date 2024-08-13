let g:OmniSharp_highlighting = 1
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_use_modern_net = 1 
let g:OmniSharp_prefer_global_sln = 1
let g:OmniSharp_want_snippet=1
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_typeLookupInPreview = 1
let g:OmniSharp_timeout = 1

let g:OmniSharp_highlight_groups = {
\ 'Comment': 'Comment',
\ 'ExcludedCode': 'NonText',
\ 'Identifier': 'Identifier',
\ 'Keyword': 'Keyword',
\ 'ControlKeyword': 'Conditional',
\ 'NumericLiteral': 'Number',
\ 'Operator': 'Operator',
\ 'OperatorOverloaded': 'Function',
\ 'PreprocessorKeyword': 'Keyword',
\ 'StringLiteral': 'String',
\ 'WhiteSpace': 'NonText',
\ 'Text': 'NonText',
\ 'StaticSymbol': 'StorageClass',
\ 'PreprocessorText': 'Normal',
\ 'Punctuation': 'NonText',
\ 'VerbatimStringLiteral': 'String',
\ 'StringEscapeCharacter': 'Function',
\ 'ClassName': 'Type',
\ 'DelegateName': 'Float',
\ 'EnumName': 'Type',
\ 'InterfaceName': 'Number',
\ 'ModuleName': 'Type',
\ 'StructName': 'Type',
\ 'TypeParameterName': 'Float',
\ 'FieldName': 'Character',
\ 'EnumMemberName': 'Constant',
\ 'ConstantName': 'Constant',
\ 'LocalName': 'Normal',
\ 'ParameterName': 'Boolean',
\ 'MethodName': 'Function',
\ 'ExtensionMethodName': 'Function',
\ 'PropertyName': 'Macro',
\ 'EventName': 'Normal',
\ 'NamespaceName': 'Type',
\ 'LabelName': 'Type'
\}
"OmniSharp won't work without this setting
filetype plugin on

" Ensure that `g:sharpenup_statusline_opts` is set _before_
" `sharpenup#statusline#Build()` is called
let g:sharpenup_statusline_opts = { 'Highlight': 0 }
let g:lightline = {
\ 'active': {
\   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype', 'sharpenup']]
\ },
\ 'inactive': {
\   'right': [['lineinfo'], ['percent'], ['sharpenup']]
\ },
\ 'component': {
\   'sharpenup': sharpenup#statusline#Build()
\ }
\}
augroup lightline_integration
  autocmd!
  autocmd User OmniSharpStarted,OmniSharpReady,OmniSharpStopped call lightline#update()
augroup END
"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    "autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END


" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>rn :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
"nnoremap <leader>tp :OmniSharpAddToProject<cr>

nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>
" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>

"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
