"""plugins
" PlugInstall, PlugUpdate, PlugClean
call plug#begin()
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'doums/darcula'
  Plug 'joshdick/onedark.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Raimondi/delimitMate'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
  Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' , 'for': 'python' }
  Plug 'preservim/nerdcommenter'
  Plug 'fatih/vim-go'
  Plug 'vim-jp/vim-go-extra'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
call plug#end()
"""colors
set termguicolors
" set t_Co=256
"
" theme 
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
" colorscheme onedark
" colorscheme darcula
" this forces transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"""mouse
set mouse-=a
"""standard
syntax on
set nocompatible
set encoding=utf-8
set novisualbell
set wrap
set number
syntax enable
set hlsearch
set cursorline
set number
set relativenumber
set wildmenu
set ruler
set colorcolumn=80
set wildmenu
""coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into oe
  set signcolumn=number
else
  set signcolumn=yes
endif
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"""language settings
augroup python
    autocmd!
    autocmd FileType python
                \   syn keyword pythonBuiltin self
                \   syn keyword pythonBuiltin cls
augroup end
"""spacing
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
autocmd FileType python setlocal tabstop=4 shiftwidth=4 sts=4
autocmd FileType go setlocal tabstop=4 shiftwidth=4 sts=4
"""integrated terminal
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 20 
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR>

""" Plugin Settings
"" cock - CocUninstall, CocConfig
" python https://github.com/neoclide/coc-python
let g:coc_global_extensions = ['coc-python', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"GoTo code navigation
nmap <leader> g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> rn <Plug>(coc-rename)

"" indentLines
let g:indentLine_enabled = 1
let g:indentLine_char = '│'

"" Nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" delimitMate to turn off autocomplete on specific words:
" au FileType mail let b:delimitMate_autoclose = 0 : this turns off for 'mail'n

"" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#hunks#enabled = 0
let g:airline_theme = 'ayu_dark'

"" pydocstring
nmap <silent> <C-c> <Plug>(pydocstring)
let g:pydocstring_formatter = 'google'

"" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
