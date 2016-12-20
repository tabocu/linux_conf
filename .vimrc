execute pathogen#infect()

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent

set number

let NerdTreeIgnore = ['\.o$','\.d$']
nnoremap <c-a> :NERDTreeToggle<CR>

function! ToggleBackground()
    if &background=="dark"
        set background=light
    else
        set background=dark
    endif
endfunction
nmap <C-b> :call ToggleBackground()<CR>

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey   ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black  ctermbg=0

set incsearch
set ignorecase
set smartcase

syntax enable
filetype plugin indent on
highlight LineNr ctermfg=blue

nnoremap <space> za

set cursorline
if exists('+colorcolumn')
    set colorcolumn=80,120
else
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%121v./
endif

set background=dark
set t_Co=256

colorscheme solarized

set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enable = 1

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
