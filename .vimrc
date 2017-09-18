" variables
let g:gitgutter_override_sign_column_highlight=0
let g:airline_section_z="%l : %v"
let g:airline_powerline_fonts=1
let g:airline_theme="wal"
let g:airline#extensions#tabline#enabled=1
let g:NERDTreeDirArrowExpandable="→"
let g:NERDTreeDirArrowCollapsible="↓"
let g:ctrlp_map="<c-p>"
let g:ctrlp_cmd="CtrlP"
let g:ctrlp_working_path_mode="ra"
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

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
hi StatusLine ctermbg=black cterm=none
hi StatusLineNC ctermbg=black cterm=none
hi MatchParen ctermbg=cyan ctermfg=black

" settings
filetype indent on

set relativenumber nu cursorline
set ts=2 sw=2 expandtab autoindent smartindent
set foldmethod=syntax nofoldenable
set autoread
set list lcs=trail:·
set incsearch
set hidden
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" keybindings
let mapleader=" "

nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>

nnoremap <leader>s :so %<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader><leader>h <C-w>h
nnoremap <leader><leader>j <C-w>j
nnoremap <leader><leader>k <C-w>k
nnoremap <leader><leader>l <C-w>l

nnoremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" pathogen
execute pathogen#infect()
call pathogen#helptags()
