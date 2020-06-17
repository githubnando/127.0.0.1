colorscheme evening
set nocompatible
syntax on

"Allows to click around without moving mouse cursor
set mouse=a

"Highlights matching brackets
set showmatch

"Highlight searched terms
set hlsearch

"Automatic indentation for programming
set autoindent  

"Automatically indents lines after opening a bracket
set smartindent  

"This makes the backspace key function like it does in other programs.
set backspace=2

"How much space Vim gives to a tab
set tabstop=4  

"Enables line numbering
set number  

"Improves tabbing
set smarttab  

"Assists code formatting
set shiftwidth=4

"Lets you hide sections of code
set foldmethod=manual  

"Auto reload modified files
set autoread

"--- Standard navigation
imap <silent> <down> <c-o>gj
imap <silent> <up> <c-o>gk
nmap <silent> <down> gj
nmap <silent> <up> gk

"---  Open menu with F4
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>

"Writes to the file automatically on certain conditions (like quiting :q)"
set autowriteall

"CTRL+R: Shortcut to replace the selected string in Visual Mode with another"
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
