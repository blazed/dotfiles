call plug#begin('~/.config/nvim/plugged')

" colorschemes
" Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'

" utilities
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
" Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim' " search inside files using ack. Same as command line ack utility, but use :Ack
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plug 'tpope/vim-ragtag' " endings for html, xml, etc. - ehances surround
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'benmills/vimux' " tmux integration for vim
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
" Plug 'benekastah/neomake' " neovim replacement for syntastic using neovim's job control functonality
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'garbas/vim-snipmate' " snippet manager
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'MarcWeber/vim-addon-mw-utils' " interpret a file by function and cache file automatically
Plug 'tomtom/tlib_vim' " utility functions for vim
Plug 'sotte/presenting.vim', { 'for': 'markdown' } " a simple tool for presenting slides in vim based on text files
Plug 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plug 'tpope/vim-dispatch' " asynchronous build and test dispatcher
Plug 'tpope/vim-vinegar'
Plug 'AndrewRadev/splitjoin.vim' " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
Plug 'vim-scripts/matchit.zip' " extended % matching
Plug 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'majutsushi/tagbar'

" html / templates
Plug 'mattn/emmet-vim', { 'for': 'html' } " emmet support for vim - easily create markdup wth CSS-like syntax
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'mustache/vim-mustache-handlebars' " mustach support
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] } " jade support

" JavaScript
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' } " JavaScript indent support
Plug 'moll/vim-node', { 'for': 'javascript' } " node support
Plug 'othree/yajs.vim', { 'for': 'javascript' } " JavaScript syntax plugin
Plug 'othree/es.next.syntax.vim', { 'for': 'javascript' } " ES6 and beyond syntax
Plug 'mxw/vim-jsx', { 'for': ['jsx', 'javascript'] } " JSX support

" TypeScript
" Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' } " extended typescript support - works as a client for TSServer
" Plug 'clausreinke/typescript-tools.vim', { 'for': 'typescript' } " typescript tools
" Plug 'leafgarland/typescript-vim', { 'for': 'typescript' } " typescript support
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }

" styles
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] } " markdown support
Plug 'groenewege/vim-less', { 'for': 'less' } " less support
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support

" markdown
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' } " Open markdown files in Marked.app - mapped to <leader>m
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" language-specific plugins
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
Plug 'Shougo/vimproc.vim', { 'do': 'make' } " interactive command execution in vim
Plug 'timcharper/textile.vim', { 'for': 'textile' } " textile support
Plug 'tclem/vim-arduino' " arduino support - compile wihtout needing to open the arduino IDE
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins', 'for': 'scala' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'rizzatti/dash.vim'
Plug 'hashivim/vim-terraform'
Plug 'rust-lang/rust.vim'
Plug 'google/vim-jsonnet'

function! InstallGoBins(info)
  if a:info.status != 'unchanged' || a:info.force
      if a:info.status == 'installed'
          GoInstallBinaries
      endif
      if a:info.status == 'updated'
          GoUpdateBinaries
      endif
    UpdateRemotePlugins
  endif
endfunction

Plug 'fatih/vim-go', { 'for': 'go', 'do': function('InstallGoBins') }

" function! BuildYCM(info)
"   if a:info.status != 'unchanged' || a:info.force
"     !./install.py --clang-completer --gocode-completer --tern-completer --racer-completer
"     UpdateRemotePlugins
"   endif
" endfunction

" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'for': ['go', 'rust', 'c', 'c++', 'javascript', 'python'] }

 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
 Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
 Plug 'sebastianmarkow/deoplete-rust'
 Plug 'zchee/deoplete-jedi'
 Plug 'mhartington/nvim-typescript'
 Plug 'jodosha/vim-godebug' " Debugger integration via delve
 Plug 'w0rp/ale'
 Plug 'vim-syntastic/syntastic'

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    !cargo build --release
    UpdateRemotePlugins
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

call plug#end()

" autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
let g:deoplete#enable_at_startup = 1 " ignored by vim because deoplete not installed there
