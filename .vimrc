"set incremental search and search highlighting
set incsearch
set hlsearch

"map leader to <space>
let mapleader = " "
let g:mapleader = " "

" Fast saving
nmap <leader>w :w<cr>

" Fast open tab
nmap <leader>t :tabnew<cr>

" Fast quit without saving
nmap <leader>q :q<cr>

" Faster? quit and save
nmap <leader>wq :wq<cr>

" Fast copy all
nmap <leader>a :%y<cr>

" Run through perl interpreter doodle
nmap <leader>c :!perl -cw %:p<cr>

"show line numbers
set number

"syntax highlighting
syn on
set syn=tt2html
set syn=embperl

"show status bar
set laststatus=2

"make status bar wicked sweet
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40F\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
          \ endif

" Remember info about open buffers on close
set viminfo^=%

