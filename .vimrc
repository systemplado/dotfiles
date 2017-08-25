" variables
let g:gitgutter_override_sign_column_highlight = 0

if !exists("g:syntax_on")
    syntax enable
endif

" theming
colorscheme delek
hi Normal guibg=NONE ctermbg=NONE

hi Special ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none ctermfg=white
hi CursorLine cterm=none ctermbg=233
hi SignColumn ctermbg=none
hi TabLine ctermbg=none ctermfg=236 cterm=none
hi TabLineFill ctermbg=none cterm=none ctermfg=none
hi TabLineSel ctermbg=none cterm=none
hi Folded ctermbg=none cterm=none
hi StatusLine ctermbg=none cterm=none

" settings
filetype indent on

set relativenumber nu cursorline
set ts=2 sw=2 expandtab autoindent smartindent
set foldmethod=syntax nofoldenable
set autoread
set list lcs=trail:·
set showtabline=2
set showcmd
set incsearch

" keybindings
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>

nnoremap <F1> 1gt
nnoremap <F2> 2gt
nnoremap <F3> 3gt
nnoremap <F4> 4gt
nnoremap <F5> 5gt
nnoremap <F6> 6gt
nnoremap <F7> 7gt
nnoremap <F8> 8gt
nnoremap <F9> 9gt
nnoremap <F10> 10gt
nnoremap <F12> :tabe .<CR>
nnoremap <Space> :checktime<CR>

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" pathogen
execute pathogen#infect()
call pathogen#helptags()
