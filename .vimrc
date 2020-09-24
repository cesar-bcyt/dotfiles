set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'statox/FYT.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'tikhomirov/vim-glsl'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'xavierd/clang_complete'
call vundle#end()
filetype plugin indent on
nnoremap <C-c> <C-a>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
inoremap <C-Q> <Backspace><Backspace>
inoremap <C-\> <Esc>:tabe ~/.vimrc<CR>
nnoremap <C-\> <Esc>:tabe ~/.vimrc<CR>
set backspace=2
set hidden
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent
" set autoindent
map <space> za
map <F1> zr
map <F2> zm
map <F3> :SyntasticReset<CR>
map <A-j> <C-w>w<C-e><C-w>w
map <A-k> <C-w>w<C-y><C-w>w
inoremap <C-]> <C-x><C-]>
nnoremap dl dd
nnoremap j gj
nnoremap k gk
nnoremap Y y$
set autoread
iabbrev improt import
iabbrev frmo from
iabbrev improt import
iabbrev imptro import
iabbrev lg12 col-lg-12
iabbrev lg11 col-lg-11
iabbrev lg10 col-lg-10
iabbrev lg9 col-lg-9
iabbrev lg8 col-lg-8
iabbrev lg7 col-lg-7
iabbrev lg6 col-lg-6
iabbrev lg5 col-lg-5
iabbrev lg4 col-lg-4
iabbrev lg3 col-lg-3
iabbrev lg2 col-lg-2
iabbrev lg1 col-lg-1
iabbrev md12 col-md-12
iabbrev md11 col-md-11
iabbrev md10 col-md-10
iabbrev md9 col-md-9
iabbrev md8 col-md-8
iabbrev md7 col-md-7
iabbrev md6 col-md-6
iabbrev md5 col-md-5
iabbrev md4 col-md-4
iabbrev md3 col-md-3
iabbrev md2 col-md-2
iabbrev md1 col-md-1
iabbrev sm12 col-sm-12
iabbrev sm11 col-sm-11
iabbrev sm10 col-sm-10
iabbrev sm9 col-sm-9
iabbrev sm8 col-sm-8
iabbrev sm7 col-sm-7
iabbrev sm6 col-sm-6
iabbrev sm5 col-sm-5
iabbrev sm4 col-sm-4
iabbrev sm3 col-sm-3
iabbrev sm2 col-sm-2
iabbrev sm1 col-sm-1
iabbrev xs12 col-xs-12
iabbrev xs11 col-xs-11
iabbrev xs10 col-xs-10
iabbrev xs9 col-xs-9
iabbrev xs8 col-xs-8
iabbrev xs7 col-xs-7
iabbrev xs6 col-xs-6
iabbrev xs5 col-xs-5
iabbrev xs4 col-xs-4
iabbrev xs3 col-xs-3
iabbrev xs2 col-xs-2
iabbrev xs1 col-xs-1

autocmd FileType javascript imap cl( console.log();<Esc>hi

autocmd FileType javascript imap rcomp import React, { Component } from "react<Esc>A;<Esc>o<CR>class extends Component {<Cr>  render() {<CR><space><space>return(<CR>);<CR>}<CR>}<Esc>kkk0eeea<Space>
autocmd FileType html set tabstop=2
" autocmd FileType html nnoremap <Tab> <C-y>,
" let g:user_emmet_leader_key=''
imap <expr> <S-tab> emmet#expandAbbrIntelligent("\<tab>")
autocmd FileType html set shiftwidth=2
autocmd FileType html setlocal commentstring=<!--%s-->
autocmd FileType glsl setlocal commentstring=//%s
autocmd FileType html inoremap {% {%<Space><Space>%}<Esc>hhi

autocmd FileType python vnoremap \te >'>o<Esc>'<Otry:<Esc><<}iexcept Exception, e:<CR>
autocmd Filetype python nnoremap <C-q> :set shiftwidth=2<CR>
autocmd Filetype python inoremap !a self.assert
autocmd Filetype python inoremap !A self.assert
autocmd Filetype python inoremap !F self.assertFalse(
autocmd Filetype python inoremap !T self.assertTrue(
autocmd Filetype python inoremap !E self.assertEqual(
" autocmd Filetype python inoremap !m if __name__ == "__main__":<Esc>ounittest.main()
autocmd FileType python inoremap \i def __init__(self,
autocmd FileType python inoremap !c class (object):<CR>def __init__(self, ):<Esc>k0f(i
autocmd FileType python inoremap !m class (models.Model):<CR>def __str__(self):<Esc>k0f(i
autocmd FileType python inoremap !S class (serializers.ModelSerializer):<Esc>0f(i
autocmd FileType python inoremap !s class (viewsets.ModelViewSet):<Esc>0f(i
autocmd FileType python inoremap !t class (unittest.TestCase):<CR>def setUp(self):<Esc>oself.browser = webdriver.Firefox()<Esc>o<CR><CR><Backspace><Backspace><Space><Space>def tearDown(self):<Esc>oself.browser.quit()<Esc>5k0f(i
autocmd FileType python nnoremap <C-j> i<Esc>o<CR><Backspace><Space><Space>def<Space>
autocmd FileType python inoremap <C-n> <Esc><S-v>:s/ /_/g<CR>0i<Space><Space>def<Space>test_<Esc>:nohlsearch<CR>A(self):<Esc>o
autocmd FileType python nnoremap <C-n> <Esc><S-v>:s/ /_/g<CR>1i<Space><Space>def<Space>test_<Esc>:nohlsearch<CR>A(self):<Esc>o

autocmd FileType java set shiftwidth=2
autocmd FileType java set tabstop=2
autocmd FileType java vnoremap \te >'>o<Esc>'<Otry {<Esc>}i} catch (Exception e) {<CR>}<Esc>ko
autocmd Filetype java inoremap <C-l> <Esc>A<CR>
autocmd FileType java inoremap \s public class <C-r>=expand('%:t:r')<CR> {<CR>public static void main(String[] args) {<CR><CR>}<CR><Esc>0i}<Esc>kki<Tab><Tab>
autocmd FileType java inoremap \m public static void main(String[] args) {<CR><CR>}<Esc>ki<Tab>
autocmd FileType java inoremap \S System.out.println();<Esc>hi
autocmd FileType java iab <buffer> <unique> \f <C-r>=expand('%:t:r')<CR>
autocmd FileType java iabbrev <buffer> <unique> \p <C-r>=expand('%:t:r')<CR>
autocmd FileType java iabbrev im import
autocmd FileType java iabbrev I Integer
autocmd FileType java iabbrev S String
autocmd FileType java iabbrev b boolean
autocmd FileType java iabbrev p public
autocmd FileType java iabbrev s static
autocmd FileType java iabbrev n int
autocmd FileType java iabbrev v void
autocmd FileType java iabbrev o protected
autocmd FileType java iabbrev f final
autocmd FileType java iabbrev l long
autocmd FileType java iabbrev r private
autocmd FileType java iabbrev c class

autocmd FileType python let b:surround_45 = "__\r__"
autocmd FileType ruby inoremap \i def initialize
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType haml set tabstop=2
autocmd FileType haml set shiftwidth=2
" let g:syntastic_javascript_checkers = ['lynt'] 
" let g:syntastic_javascript_checkers = 'lynt'
" let g:syntastic_cpp_checkers = ['gcc']
" let g:syntastic_cpp_compiler = 'gcc'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_check_on_w = 0
" let g:syntastic_quiet_messages = { "type": "style" }
"execute pathogen#infect()
command! -nargs=1 Wikidefine :read !wikidefine "<args>"
nnoremap <leader>] :Wikidefine 
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l][%p%%]\ [LEN=%L]
set laststatus=2
set relativenumber
map á 'a
map ś 's
autocmd FileType python setlocal commentstring=#%s
autocmd FileType javascript setlocal commentstring=//%s
noremap <M-,> k:call search('^'. matchstr(getline(line('.')+1), '\(\s*\)') .'\S', 'b')<CR>^
noremap <M-.> :call search('^'. matchstr(getline(line('.')), '\(\s*\)') .'\S')<CR>^
set hlsearch
set pastetoggle=<F5>
set infercase
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
set completefunc=syntaxcomplete#Complete
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInfo
set complete=.,w,b,u,U,t,i,d

augroup omni_complete
  " clear commands before resetting
  autocmd!
  " Enable omnicomplete for supported filetypes
  autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType cpp setlocal omnifunc=cppcomplete#Complete
  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END
set exrc
" inoremap <C-k> <Esc>ddkA
inoremap jk <esc>
inoremap <C-S> <esc>:w<CR>A
nnoremap <C-S> :w<CR>
let g:user_emmet_settings = {
\ 	'html': {
\ 		'indentation' : '  '
\ 	},
\}
set fileencoding=utf-8
set fileencodings=utf-8,shift-jis,gb18030,utf-16,big5,sjis
" set shiftwidth=2
" set softtabstop=2
filetype indent plugin on
" let g:ctrlp_map = '<leader>t'
set wildignore+=*/build/**
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|env\|bin\|lib'
let g:last_relative_dir = ''
nnoremap \1 :call RelatedFile ("models.py")<cr>
nnoremap \2 :call RelatedFile ("views.py")<cr>
nnoremap \3 :call RelatedFile ("urls.py")<cr>
nnoremap \4 :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \6 :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \0 :e settings.py<cr>
nnoremap \9 :e urls.py<cr>

fun! RelatedFile(file)
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        exec "edit %:h/" . a:file
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
    if g:last_relative_dir != ''
        exec "edit " . g:last_relative_dir . a:file
        return ''
    endif
    echo "Cant determine where relative file is : " . a:file
    return ''
endfun

fun! SetAppDir()
    if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
        let g:last_relative_dir = expand("%:h") . '/'
        return ''
    endif
endfun

autocmd BufEnter *.py call SetAppDir()
nnoremap <Leader>p :CtrlP<cr>
set nocindent
inoremap (; ();<Esc>hi
inoremap '; '';<Esc>hi
inoremap "; "";<Esc>hi
inoremap {\ {<CR><CR>}<Esc>kko
inoremap {\| {<CR><CR>}<Esc>kko
inoremap ê <Esc>A<CR>
let g:ycm_global_ycm_extra_conf = '/home/cbravo/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" map <C-i> <Esc>:execute '!arduino --port /dev/ttyACM0 --upload ' . !expand('%:p')<CR>
nmap <Tab> :make run
set foldmethod=indent
"let g:minimap_toggle='<C-m>'

let g:ale_linters = {
  \  'json': ['fixjson', 'jsonlint'],
  \   'vim': ['vint'],
  \   'javascript': ['eslint'],
  \}
" let g:ale_sign_error = '❌ '
let g:ale_sign_error = '!!'
" let g:ale_sign_warning = '⚠️'
let g:ale_sign_warning = '>>'
let g:ale_close_preview_on_insert = 1
let g:ale_fixers = {
      \  'html':['tidy'],
      \ 'markdown': ['prettier'],
      \ 'javascript': ['eslint']
      \ }
let g:ale_fix_on_save = 1
let g:ale_set_balloons = 1
let g:ale_list_window_size = 5
let g:ale_virtualtext_cursor = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_echo_msg_error_str = 'E'. ' '
let g:ale_echo_msg_warning_str = 'W'. ' '
let g:ale_virtualtext_error_hi = 'ALEVirtualTextError'
let g:ale_virtualtext_warning_hi = 'ALEVirtualTextWarning'
let g:ale_echo_msg_info_str = nr2char(0xf05a) . ' '
let g:ale_echo_msg_format = '%severity%  %linter% - %s'
let g:ale_virtualtext_prompt = ''
" let g:ale_sign_column_always = 1
let g:ale_statusline_format = [
      \ g:ale_echo_msg_error_str . ' %d',
      \ g:ale_echo_msg_warning_str . ' %d',
      \ nr2char(0xf4a1) . '  ']
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
let python_highlight_all=1
syntax on
imap THETA θ
" Α α, Β β, Γ γ, Δ δ, Ε ε, Ζ ζ, Η η, Θ θ, Ι ι, Κ κ, Λ λ, Μ μ, Ν ν, Ξ ξ, Ο ο, Π π, Ρ ρ, Σ σ/ς, Τ τ, Υ υ, Φ φ, Χ χ, Ψ ψ, and Ω ω.
let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-8.so.1'
nnoremap <leader>x *``cgn
