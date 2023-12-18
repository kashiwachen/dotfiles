"""plugins
" PlugInstall, PlugUpdate, PlugClean
call plug#begin()
  Plug 'dense-analysis/ale' " Syntax checker with LSP
  " neovim themes
  Plug 'folke/tokyonight.nvim'
  Plug 'doums/darcula'
  Plug 'joshdick/onedark.vim'
  " install pydocstring
  Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' , 'for': 'python' }
  " install golang linter
  Plug 'fatih/vim-go'
  Plug 'vim-jp/vim-go-extra'
  " install telescope.nvim
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " other tools
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Raimondi/delimitMate'
  Plug 'nvim-lualine/lualine.nvim'
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
call plug#end()

" mouse
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
set colorcolumn=88
set wildmenu
set hidden

""coc
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
  split term://fish
  resize 20
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR>

""" Plugin Settings
"" coc - CocUninstall, CocConfig
" python https://github.com/neoclide/coc-python
let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-prettier', 'coc-tsserver']
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
let g:NERDTreeDirArrowExpandable = '?'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeMinimalMenu=1
let g:NERDTreeShowHidden = 1
" let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
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

"" pydocstring
nmap <silent> <C-c> <Plug>(pydocstring)
let g:pydocstring_formatter = 'google'

"" Load plug config
source $HOME/.config/nvim/plug-config/telescope.lua
source $HOME/.config/nvim/plug-config/treesitter.lua
source $HOME/.config/nvim/plug-config/ale.lua
source $HOME/.config/nvim/plug-config/color.lua
" source $HOME/.config/nvim/plug-config/airline.lua

