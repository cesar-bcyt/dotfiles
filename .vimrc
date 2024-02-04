set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'RRethy/vim-hexokinase'
Plugin 'vim-airline/vim-airline'
Plugin 'eliba2/vim-node-inspect'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tomasiser/vim-code-dark'
Plugin 'github/copilot.vim'
Plugin 'nvim-treesitter/nvim-treesitter'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
call vundle#end()
inoremap jk <Esc>
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|env\|bin\|lib'
let g:last_relative_dir = ''
set backspace=2
set hidden
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l][%p%%]\ [LEN=%L]
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']
set relativenumber
set number
colorscheme codedark
" fix common typos
inoremap improt import
inoremap imoprt import
inoremap imrpot import
inoremap exprot export
inoremap exrpot export
inoremap exrport export
inoremap exprot export
inoremap <C-S> <Esc>:w<CR>
nnoremap <C-S> :w<CR>
inoremap gj<Space> console.log(``)<Esc>hi
let g:user_emmet_leader_key='<C-e>'
lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "typescript", "vim", "json", "html", "tsx" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF
