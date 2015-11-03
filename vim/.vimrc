"=============================================================================
" Description: Config file for Vim
" Author: Tony Ganch <tonyganch@gmail.com>
" URL: http://github.com/tonyganch/dotfiles/blob/master/.vimrc
"=============================================================================

" Make Vim more useful
set nocompatible

" Bundles {{{
    " Vundle setup
    " Plugin manager, for more details see :h vundle or
    " https://github.com/gmarik/vundle
    filetype off     " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Plugin 'gmarik/vundle'

    " NOTE: comments after Plugin command are not allowed
    " Airline
        " Airline promptline
        Plugin 'edkolev/promptline.vim'
        " Airline tmux status line
        Plugin 'edkolev/tmuxline.vim'
        " Airline status bar
        Plugin 'bling/vim-airline'
    " CSS
        " Better CSS indent
        Plugin 'miripiruni/vim-better-css-indent'
        " Highlight colors in css files
        Plugin 'ap/vim-css-color'
        " CSS3 syntax support
        Plugin 'hail2u/vim-css3-syntax'
        " CSScomb
        Plugin 'csscomb/vim-csscomb'
        " LESS support
        Plugin 'groenewege/vim-less'
        " Stylus support
        Plugin 'wavded/vim-stylus'
    " HTML/HAML
        " HTML5 omnicomplete and syntax
        Plugin 'othree/html5.vim'
        " Jade support
        Plugin 'vim-scripts/jade.vim'
        " Runtime files for Haml and Sass
        Plugin 'tpope/vim-haml'
    " JavaScript
        " JSHint
        Plugin 'walm/jshint.vim'
        " CoffeeScript support
        Plugin 'kchmck/vim-coffee-script'
        " JSON
        Plugin 'elzr/vim-json'
        " ES6 support
        Plugin 'othree/yajs.vim'
    " Other
        " Ag, replace grep and ack
        Plugin 'rking/ag.vim'
        " Unload all buffers but the current one
        Plugin 'vim-scripts/BufOnly.vim'
        " CtrlP
        Plugin 'kien/ctrlp.vim'
        " Automatic closing of quotes, parenthesis, brackets, etc.
        Plugin 'vim-scripts/delimitMate.vim'
        " EditorConfig
        Plugin 'editorconfig/editorconfig-vim'
        " Graphic vim undo tree
        Plugin 'sjl/gundo.vim'
        " Shows 'Nth match out of M' at every search
        Plugin 'vim-scripts/IndexedSearch'
        " A tree explorer plugin
        Plugin 'scrooloose/nerdtree'
        " Scala
        Plugin 'derekwyatt/vim-scala'
        " Perform all your vim insert mode completions with Tab
        Plugin 'ervandew/supertab'
        " Syntax checker
        Plugin 'scrooloose/syntastic'
        " Tagbar
        Plugin 'majutsushi/tagbar'
        " Solarized Colorscheme
        Plugin 'altercation/vim-colors-solarized'
        " Show git changes in gutter
        Plugin 'airblade/vim-gitgutter'
        " CtrlSpace
        Plugin 'szw/vim-ctrlspace'
        " Git
        Plugin 'tpope/vim-fugitive'
        " Mappings to easily delete, change and add surroundings in pairs
        Plugin 'tpope/vim-surround'
        Plugin 'cdmedia/itg_flat_vim'

    filetype plugin indent on     " required!
" }}}

" Line numbers {{{
    " Show line numbers relative to current line, but show curent line number
    " as absolute, not zero. Works in Vim 7.4+
    set relativenumber
    set number
" }}}

" Encoding and lang settings {{{
    " Character encoding used inside Vim
    " Only available when compiled with the +multi_byte feature
    set encoding=utf-8

    " Character encodings considered when starting to edit an existing file
    " Only available when compiled with the +multi_byte feature
    set fileencodings=utf-8,cp1251

    " Create encodings menu
    menu Encoding.UTF-8 :e ++enc=utf8 <CR>
    menu Encoding.Windows-1251 :e ++enc=cp1251<CR>
    menu Encoding.koi8-r :e ++enc=koi8-r<CR>
    menu Encoding.cp866 :e ++enc=cp866<CR>

    " Use russian keyboard layout in normal mode
    set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',ё\\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",Ё\\|,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>
" }}}

" Autocomplete {{{
    " Enhance command-line completion
    " Only available when compiled with the +wildmenu feature
    set wildmenu

    " Set completion mode
    " When more than one match, list all matches and complete first match
    " Then complete the next full match
    set wildmode=list:longest,full

    " Ignore following files when completing file/directory names
    " Version control
    set wildignore+=.hg,.git,.svn
    " OS X
    set wildignore+=*.DS_Store
    " Python byte code
    set wildignore+=*.pyc
    " Binary images
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
" }}}

" Tabs and windows {{{
    " Set title of the window to filename [+=-] (path) - VIM
    " Only available when compiled with the +title feature
    set title

    " Always show tabs
    " set showtabline=2
    " Display invisible characters
    set list
    set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×

    " Splitting a window will put the new window below the current one
    " See :sp
    " Only available when compiled with the +windows feature
    set splitbelow

    " Splitting a window will put the new window right of the current one
    " See :vsp
    " Only available when compiled with the +vertsplit feature
    set splitright
" }}}

" Aligning stuff within window {{{
    " Number of column to be highlighted
    " Only available when compiled with the +syntax feature
    set colorcolumn=80

    " Highlight the screen line of the cursor
    " Only available when compiled with the +syntax feature
    set cursorline

    " Don't break words when wrapping
    " Only available when compiled with the +linebreak feature
    set linebreak

    " Show ↪ at the beginning of wrapped lines
    if has("linebreak")
        let &sbr = nr2char(8618).' '
    endif

    " Minimal number of lines to keep above and below the cursor
    " Typewriter mode = keep current line in the center
    set scrolloff=999

    " Maximum width of text that is being inserted
    " Longer lines will be broken after white space to get this width
    "set textwidth=80

    " Wrap long lines
    set wrap
" }}}

" Indent {{{
    " Copy indent from current line when starting a new line
    set autoindent

    " Do smart indenting when starting a new line
    " Only available when compiled with the +smartindent feature
    set smartindent

    " Number of spaces to use for each step of (auto)indent
    set shiftwidth=4

    " Use spaces instead of tab
    set expandtab

    " Number of spaces that a tab counts for
    set tabstop=4

    " Number of spaces that a tab counts for while performing editing operations
    set softtabstop=4
" }}}

" Status line {{{
    function! FileSize()
        let bytes = getfsize(expand("%:p"))
        if bytes <= 0
            return ""
        endif
        if bytes < 1024
            return bytes . "B"
        else
            return (bytes / 1024) . "K"
        endif
    endfunction

    function! CurDir()
        return expand('%:p:~')
    endfunction

    " Last window always has a status line
    set laststatus=2

    " Content of the status line
    " Only available when compiled with the +statusline feature
    set statusline=\
    " Buffer number
    set statusline+=%n:\
    " File name
    set statusline+=%t
    " Modified flag
    set statusline+=%m
    set statusline+=\ \
    " Paste mode flag
    set statusline+=%{&paste?'[paste]\ ':''}
    " File encoding
    set statusline+=%{&fileencoding}
    " Type of file
    " Only available when compiled with the +autocmd feature
    set statusline+=\ \ %Y
    " Column number
    set statusline+=\ %3.3(%c%)
    " Current line / number of lines in buffer
    set statusline+=\ \ %3.9(%l/%L%)
    " Percentage through file in lines
    " set statusline+=\ \ %2.3p%%
    " File size
    set statusline+=\ \ %{FileSize()}
    " Truncate here if line is too long
    set statusline+=%<
    " Path to the file
    set statusline+=\ \ CurDir:%{CurDir()}
" }}}

" Folding {{{
    " za = toggle current fold
    " zR = open all folds
    " zM = close all folds
    " From https://github.com/sjl/dotfiles/blob/master/vim/.vimrc
    function! MyFoldText()
        let line = getline(v:foldstart)
        let nucolwidth = &fdc + &number * &numberwidth
        let windowwidth = winwidth(0) - nucolwidth - 3
        let foldedlinecount = v:foldend - v:foldstart
        " expand tabs into spaces
        let onetab = strpart(' ', 0, &tabstop)
        let line = substitute(line, '\t', onetab, 'g')
        let line = strpart(line, 0, windowwidth - 2 - len(foldedlinecount))
        let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
        return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
    endfunction
    set foldtext=MyFoldText()

    " Lines with equal indent form a fold
    set foldmethod=indent

    " Maximum nesting of folds
    " Only available when compiled with the +folding feature
    set foldnestmax=10

    " All folds are closed
    " Only available when compiled with the +folding feature
    " set nofoldenable
    set foldenable

    " Folds with a higher level will be closed
    " Only available when compiled with the +folding feature
    set foldlevel=10

    " Remove the extrafills --------
    " Only available when compiled with the +windows and +folding features
    set fillchars="fold: "

    " Disable markdown folding
    let g:vim_markdown_folding_disabled=1
" }}}

" Search {{{
    " While typing a search command, show pattern matches as it is typed
    " Only available when compiled with the +extra_search feature
    set incsearch

    " When there is a previous search pattern, highlight all its matches
    " Only available when compiled with the +extra_search feature
    set hlsearch

    " Ignore case in search patterns
    set ignorecase

    " Override the 'ignorecase' if the search pattern contains upper case characters
    set smartcase

    " All matches in a line are substituted instead of one
    set gdefault
" }}}

" Other settings (`set ...`) {{{
    " Show (partial) command in the last line of the screen
    " Comment this line if your terminal is slow
    " Only available when compiled with the +cmdline_info feature
    set showcmd

    " Number of colors
    set t_Co=256

    " Don't show the intro message starting Vim
    set shortmess+=I

    " Turn mouse pointer to a up-down sizing arrow
    " Only available when compiled with the +mouseshape feature
    set mouseshape=s:udsizing,m:no

    " Edit several files in the same time without having to save them
    set hidden

    " No beeps, no flashes
    set visualbell
    set t_vb=

    " List of directories which will be searched when using :find, gf, etc.
    " Search relative to the directory of the current file
    " Search in the current directory
    " Search downwards in a directory tree
    " Only available when compiled with the +path_extra feature
    set path=.,,**

    " Store lots of history entries: :cmdline and search patterns
    set history=1000

    " Backspacing settings
    " start     allow backspacing over the start of insert;
    "           CTRL-W and CTRL-U stop once at the start of insert.
    " indent    allow backspacing over autoindent
    " eol       allow backspacing over line breaks (join lines)
    set backspace=indent,eol,start

    " Backup и swp files
    " Don't create backups
    set nobackup
    " Don't create swap files
    set noswapfile

    " Load previous session
    " Only available when compiled with the +viminfo feature
    set viminfo='10,\"100,:20,%,n~/.viminfo
    " Set cursor to its last position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" }}}

" Leader shortcuts {{{
    let mapleader = ","

    " ,b
        " In Visual mode exec git blame with selected text
        vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

    " ,bl
        " Show buffers
        nmap <Leader>bl :ls<cr>:b

    " ,bn
        " Go to next buffer
        nmap <Leader>bn :bn<cr>

    " ,bp
        " Go to prev buffer
        nmap <Leader>bp :bp<cr>

    " ,c
        " camelCase => camel_case
        vnoremap <silent> <Leader>c :s/\v\C(([a-z]+)([A-Z]))/\2_\l\3/g<CR>

    " ,n
        " Edit another file in the same directory with the current one
        map <Leader>n :vnew <C-R>=expand("%:p:h") . '/'<CR>

    " ,nm
        " Switch type of line numbers
        " http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
        " Vim 7.3 required
        let g:relativenumber = 0
        function! ToogleRelativeNumber()
          if g:relativenumber == 0
            let g:relativenumber = 1
            set norelativenumber
            set number
            echo "Show line numbers"
          elseif g:relativenumber == 1
            let g:relativenumber = 2
            set nonumber
            set relativenumber
            echo "Show relative line numbers"
          else
            let g:relativenumber = 0
            set nonumber
            set norelativenumber
            echo "Show no line numbers"
          endif
        endfunction
        map <Leader>nm :call ToogleRelativeNumber()<cr>

    " ,p
        " Toggle the 'paste' option
        set pastetoggle=<Leader>p

    " ,r
        " Find and replace in all open buffers
        " See http://vim.wikia.com/wiki/VimTip382
        function! Replace()
            let s:word = input("Replace " . expand('<cword>') . " with:")
            :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
            :unlet! s:word
        endfunction
        map <Leader>r :call Replace()<CR>

    " ,s
        " Shortcut for :%s//
        nnoremap <leader>s :%s//<left>
        vnoremap <leader>s :s//<left>

    " ,t
        " Run `npm test`
        nmap <Leader>t :!npm test<CR>

    " ,ts
        " Fix trailing white space
        map <leader>ts :%s/\s\+$//e<CR>

    " ,v
        " Open the .vimrc in a new tab
        nmap <leader>v :tabedit $MYVIMRC<CR>

    " Copy indented line without spaces
        nnoremap ,y ^yg_"_dd
" }}}

" Command mappings {{{
    " Bind :Q to :q
        command! Q q

    " Save file with root permissions
    command! W exec 'w'
    command! Ws exec 'w !sudo tee % > /dev/null' | e!
" }}}

" Other mappings {{{
    " <Esc><Esc>
        " Clear the search highlight in Normal mode
        nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

    " < >
        vnoremap < <gv
        vnoremap > >gv

    " Move lines
        " Move one line
        nmap <C-S-k> ddkP
        nmap <C-S-j> ddp
        " Move selected lines
        " See http://www.vim.org/scripts/script.php?script_id=1590
        vmap <C-S-k> xkP'[V']
        vmap <C-S-j> xp'[V']

    " Y from cursor position to the end of line
        nnoremap Y y$

    " Disable <Arrow keys>
        inoremap <Up> <NOP>
        inoremap <Down> <NOP>
        inoremap <Left> <NOP>
        inoremap <Right> <NOP>
        noremap <Up> <NOP>
        noremap <Down> <NOP>
        noremap <Left> <NOP>
        noremap <Right> <NOP>
        " Navigate with <Ctrl>-hjkl in Insert mode
        imap <C-h> <C-o>h
        imap <C-j> <C-o>j
        imap <C-k> <C-o>k
        imap <C-l> <C-o>l

    " Switch splits
        nmap <C-h> <C-W>h
        nmap <C-j> <C-W>j
        nmap <C-k> <C-W>k
        nmap <C-l> <C-W>l

    " <Space> = <PageDown>
        nmap <Space> <PageDown>

    " n и N
        " Search matches are always in center
        nmap n nzz
        nmap N Nzz
        nmap * *zz
        nmap # #zz
        nmap g* g*zz
        nmap g# g#zz

    " K to split
        " Basically this splits the current line into two new ones at the cursor position,
        " then joins the second one with whatever comes next.
        "
        " Example:                      Cursor Here
        "                                    |
        "                                    V
        " foo = ('hello', 'world', 'a', 'b', 'c',
        "        'd', 'e')
        "
        " becomes
        "
        " foo = ('hello', 'world', 'a', 'b',
        "        'c', 'd', 'e')
        "
        " Especially useful for adding items in the middle of long lists/tuples in Python
        " while maintaining a sane text width.
        nnoremap K <nop>
        nnoremap K h/[^ ]<cr>"zd$jyyP^v$h"zpJk:s/\v +$//<cr>:noh<cr>j^

    " Navigate through wrapped lines
        noremap j gj
        noremap k gk

    " Create a new window relative to the current one
        nmap <Leader><left>  :leftabove  vnew<CR>
        nmap <Leader><right> :rightbelow vnew<CR>
        nmap <Leader><up>    :leftabove  new<CR>
        nmap <Leader><down>  :rightbelow new<CR>

    " Switch tabs with <Tab>
        nmap <Tab> gt
        nmap <S-Tab> gT
" }}}

" Autocmd {{{
    " AutoReload .vimrc
    " See http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
    " Source the vimrc file after saving it
    if has("autocmd")
        autocmd! bufwritepost .vimrc source $MYVIMRC
    endif

    " Set syntax highlighting for different file types
    autocmd BufRead,BufNewFile *.scala set filetype=scala
" }}}

" Plugins {{{
    " Solarized
        syntax enable
        " http://stackoverflow.com/questions/7278267/incorrect-colors-with-vim-in-iterm2-using-solarized#comment11144700_7278548
        let g:solarized_termcolors=16
        set background=dark
        " Replace blue background with black
        try
            colorscheme itg_flat
        catch /^Vim\%((\a\+)\)\=:E185/
            echo "Solarized theme not found. Run :BundleInstall"
        endtry

        try
            call togglebg#map("<Leader>b")
        catch /^Vim\%((\a\+)\)\=:E117/
            " :(
        endtry

    " NERDTree
        nmap <Bs> :NERDTreeToggle<CR>
        let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=1
        let NERDTreeKeepTreeInNewTab=0
        " Disable display of the 'Bookmarks' label and 'Press ? for help' text
        let NERDTreeMinimalUI=1
        " Use arrows instead of + ~ chars when displaying directories
        let NERDTreeDirArrows=1
        let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

    " Syntastic
        let g:syntastic_javascript_checkers = ['jshint', 'jscs']
        let g:syntastic_javascript_jscs_exec = '/Users/tonyganch/.nvm/versions/node/v0.12.4/bin/jscs'
        let g:syntastic_javascript_jshint_exec = '/Users/tonyganch/.nvm/versions/node/v0.12.4/bin/jshint'
        let g:syntastic_check_on_open = 1
        no <leader>sc :SyntasticCheck<CR>

    " Vim Surround
        nmap <leader>q cs"'

    " Airline
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#tmuxline#enabled = 1
        let g:airline#extensions#hunks#enabled = 1
        let g:airline#extensions#hunks#non_zero_only = 0

        " Sections. The defaults are:
        " let g:airline_section_a = airline#section#create_left(['mode', 'crypt', 'paste', 'capslock', 'iminsert'])
        " let g:airline_section_b = airline#section#create(['hunks', 'branch'])
        " let g:airline_section_c = airline#section#create(['%<', 'file', spc, 'readonly'])
        " let g:airline_section_gutter = airline#section#create(['%='])
        " let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype'])
        " let g:airline_section_y = airline#section#create_right(['ffenc'])
        " let g:airline_section_z = airline#section#create(['windowswap', '%3p%%'.spc, 'linenr', ':%3v '])
        " let g:airline_section_warning = airline#section#create(['syntastic', 'eclim', 'whitespace'])
        function! AirlineInit()
            let g:airline_section_b = ""
            let g:airline_section_x = ""
            let g:airline_section_y = ""
            let g:airline_section_z = airline#section#create(['%3.3(%c%) : %3.9(%l/%L%)'])
            let g:airline_section_warning = airline#section#create(['syntastic', 'eclim', 'whitespace', '%m'])
        endfunction
        autocmd User AirlineAfterInit call AirlineInit()

    " Gundo
        " Force the preview window below current windows instead of below the
        " graph.
        let g:gundo_preview_bottom = 1
"}}}

if filereadable(".vim.custom")
    so .vim.custom
endif

" vim:foldmethod=marker:foldlevel=0
