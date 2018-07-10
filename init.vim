call plug#begin('~/.config/nvim/plugged')
    Plug 'Shougo/deoplete.nvim'
    Plug 'majutsushi/tagbar'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'airblade/vim-gitgutter'
    Plug 'scrooloose/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'terryma/vim-multiple-cursors'

    Plug 'vim-airline/vim-airline-themes'
    Plug 'rakr/vim-one'
    Plug 'chriskempson/base16-vim'
    Plug 'dracula/vim'
    Plug 'NLKNguyen/papercolor-theme'

    Plug 'tpope/vim-fugitive'

    Plug 'jiangmiao/auto-pairs'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'easymotion/vim-easymotion'

    Plug 'davidhalter/jedi-vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'alvan/vim-closetag'
    Plug 'leafgarland/typescript-vim'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'artur-shaik/vim-javacomplete2'
    Plug 'chrisbra/csv.vim'

    " Document Writing
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'donRaphaco/neotex'
    " Plug 'varun-ramani/docedit.nvim'
    " Not sure why this plugin is here to be honest
    Plug 'tpope/vim-sensible'
call plug#end()

" Affects fundemental text editing experience
set number
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline 
let g:NERDSpaceDelims = 1
let mapleader = ","

"" Affects the look of Vim
" Basic Color Stuff
" Colorscheme stuff
colorscheme one
set termguicolors
set background=dark
" Airline stuff
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
" Nice colored braces, brackets, etc. because those are very important
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"" Make Vim into an epic IDE
" Autocompletion + Snippets
let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

" Tags
set autochdir
set tags=tags;
nmap <C-t> :TagbarToggle<CR>

" File management
nmap <C-p> :FZF<CR>
nmap <C-n> :NERDTreeToggle<CR>


" Some keymaps for navigating the editor
nmap <Space> <Leader>

nmap <Leader>wl :wincmd l<CR>
nmap <Leader>wk :wincmd k<CR>
nmap <Leader>wj :wincmd j<CR>
nmap <Leader>wh :wincmd h<CR>

nmap <Leader>sl :vsp<CR><Leader>wl
nmap <Leader>sk :sp<CR>
nmap <Leader>sj :sp<CR><Leader>wj
nmap <Leader>sh :vsp<CR>

nmap <Leader>q :quit<CR>
nmap <Leader>wf :write<CR>

nmap <Leader>ce :edit ~/.config/nvim/init.vim<CR>
nmap <Leader>cr :source ~/.config/nvim/init.vim<CR>
