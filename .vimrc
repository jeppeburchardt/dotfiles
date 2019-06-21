call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'airblade/vim-gitgutter'
Plug 'Quramy/tsuquyomi'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

set number

"shortcut fuzzy finder
map ; :Files<CR>

"toggle nerd tree
map <C-o> :NERDTreeToggle<CR>

" when running at every change you may want to disable quickfix
let g:prettier#exec_cmd_path = "~/.nvm/versions/node/v8.9.3/lib/node_modules/.bin/prettier"
let g:prettier#quickfix_enabled = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" disbale arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

" use two spaces as tab indentation
:set expandtab
:set tabstop=2
:set shiftwidth=2
