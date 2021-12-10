syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab " spaces instead of tabs
set nu " line number
set nowrap " donot wrap, keep going outside the edge
set smartcase " case sensitive search
set noswapfile
set nobackup
set undodir=~/.vim/undodir " remember to create this
set undofile
set incsearch " search as you type. don't wait to hit enter
set ignorecase

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox' " color scheme
    Plug 'jremmen/vim-ripgrep' " advanced grep
    Plug 'tpope/vim-fugitive' " git commands
    Plug 'leafgarland/typescript-vim' " for typescript formatting
    Plug 'vim-utils/vim-man' " nice man pages
    Plug 'ctrlpvim/ctrlp.vim' " file finding
    Plug 'ycm-core/YouCompleteMe' " auto completion
    Plug 'mbbill/undotree' " undoing
    Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'jistr/vim-nerdtree-tabs'
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_drive_root='true'
endif

let g:ctrlp_user_command = ['./git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " " " leader key is the space. This is used to set your own shortcuts.
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0


" My custom mappings.
"
" saving a file, works in normal mode only
nnoremap <c-s> :w<cr>
" quit a file
nmap <leader>q :q<cr>
" NERDTree
nmap <leader>n <plug>NERDTreeTabsToggle<cr>
" greatest remap ever for pasting
vnoremap <leader>p "_dp
 
" This is supposed to change the cursor in insert mode
autocmd InsertEnter,InsertLeave * set cul!


