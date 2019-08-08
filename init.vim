set nocompatible
filetype off                  " required

set tabstop=4

set backupcopy=yes
set shiftwidth=4 " or whatever
"set autowrite
set softtabstop=4
set scrolloff=3
set expandtab







"set autoindent
set showmode
"set showcmd
set hidden
set wildmenu
set wildmode=list:longest
"set visualbell
"set cursorline
"set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=0
set undofile
"set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=80

set ignorecase
set smartcase
"set gdefault
set incsearch
set showmatch

set noswapfile
set exrc
set secure
"set hlsearch
"set nohls
"set mouse=a
"set number " show line numbers in vim
"set relativenumber
set modelines=0

"set title
"set showtabline=2
set encoding=utf-8
set winwidth=99
"set winminwidth=15
set winheight=25
"set winminheight=3
set cmdheight=2
set history=1000
"set lazyredraw
set shortmess=aI
set autoread
"set cursorcolumn
"set report=0
"set synmaxcol=2048
"set ai
set noerrorbells    " silence those fucking bells
"syntax sync minlines=2048
"set guioptions-=T   " No toolbar

"set ttymouse=xterm
"
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
au FileType exs nmap <leader>t !mix test %s <cr>


"
"let mapleader = "\\"


"nnoremap <CR> :nohlsearch<CR>
inoremap jj <ESC>
tnoremap jj <C-\><C-n><C-w><C-w>

"nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :tabnext<CR>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" set the runtime path to include Vundle and initialize
set rtp+=/root/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
"
"
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
Plugin 'vim-python/python-syntax'

"Plugin 'mattn/webapi-vim'
Plugin 'slashmili/alchemist.vim'
Plugin 'fatih/vim-go'
"Plugin 'sheerun/vim-polyglot'
"Plugin 'wincent/command-t'
"Plugin 'Shougo/deoplete.nvim'

"Plugin 'davidhalter/jedi-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'b4b4r07/vim-sqlfmt'
Plugin 'vobornik/vim-mql4'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-commentary'
"Plugin 'skywind3000/asyncrun.vim'

"Plugin 'slashmili/alchemist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
"Plugin 'spiegela/vimix'
"Plugin 'tpope/vim-surround'
Plugin 'takac/vim-hardtime'
Plugin 'prettier/vim-prettier'
"Plugin 'fxn/vim-monochrome'
"Plugin 'w0rp/ale'
"Plugin 'morhetz/gruvbox'
"Plugin 'chriskempson/base16-vim'
"Plugin 'swaroopch/vim-markdown-preview'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'drewtempelmeyer/palenight.vim'
"Plugin 'dracula/vim'
"Plugin 'ervandew/supertab'



Plugin 'ervandew/screen'
"Plugin 'MarcWeber/vim-addon-local-vimrc'

"Plugin 'vim-airline/vim-airline'
"Plugin 'pangloss/vim-javascript'
"Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
"Plugin 'Chiel92/vim-autoformat'
"Plugin 'itchyny/lightline.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

"Plugin 'google/vim-maktaba'
"Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" "Plugin 'google/vim-glaive'

"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'lervag/vimtex'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
"
".vimrc
"map <c-f> :call JsBeautify()<cr>
" or
"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

              

"
"
"
let g:python_highlight_all = 1
let g:mix_format_on_save = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
"let g:ctrlp_user_command = 'fd %s'        " MacOSX/Linux
let g:jsx_ext_required = 0
set wildignore+=*/target/*,*/.vscode/*,*/historical_data/*,*/tmp/*,*/doc/*,*/build/*,*/.build/*,*.so,*/env/*,*/cover/*,*.swp,*.zip,*.lock,*.log,*.dump,*/deps/*,*/__pycache__/*,*/node_modules/*,*/_build/*,*/.git/*,*.beam

nnoremap <F5> :set invpaste paste?<Enter>
nnoremap <leader>s :r! curl -s https://gist.githubusercontent.com/ourway/3073c7c6987bfe222f1fbd64eab324ac/raw/0f1c4f1df5a00cb1f3ac155847180991f222f59f/sig.txt<CR><CR>
nmap <F6> :NERDTreeToggle<CR>
imap <F5> <C-O><F5>
set pastetoggle=<F5>


let g:sqlfmt_command = "sqlformat"
let g:sqlfmt_options = "-r -k upper"


"set termguicolors

set t_Co=256   " This is may or may not needed.

set background=dark
"colorscheme base16-gruvbox-dark-hard
colorscheme PaperColor
"colorscheme palenight

if (has("nvim"))
  "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif



let g:vimix_map_keys = 1
syntax on
"highlight Comment ctermfg=green

let g:hardtime_default_on = 0
let g:hardtime_timeout = 2000
let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
let g:rust_clip_command = 'xclip -selection clipboard'





" Elixir

fu! SaveSess()
    execute 'mksession! ' . getcwd() . '/.session.vim'
endfunction

fu! RestoreSess()
if filereadable(getcwd() . '/.session.vim')
    execute 'so ' . getcwd() . '/.session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
endfunction

"autocmd BufWritePre * call SaveSess()
"autocmd VimEnter * nested call RestoreSess()


let g:vimtex_view_automatic = 1

