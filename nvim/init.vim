" Configurações gerais
set number
set termguicolors
set relativenumber
set mouse=a
set title
set cursorline
set encoding=utf-8

colorscheme roo1_greey
"highlight clear StatusLine

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-scripts/HTML-AutoCloseTag'
"Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'

Plug 'voldikss/vim-floaterm'
"Plug 'lissaferreira/dalton-vim' "Plug do tema dalton
"Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

Plug 'preservim/nerdtree' " Plug do nerdtree

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'dense-analysis/ale'

Plug 'gko/vim-coloresque'

Plug 'ryanoasis/vim-devicons'

"Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

"Plug 'liuchengxu/vista.vim'
"Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Ativar o vim-illuminate
Plug 'RRethy/vim-illuminate'

Plug 'tpope/vim-commentary'

Plug 'hail2u/vim-css3-syntax'

Plug 'preservim/tagbar'

"Plug 'dense-analysis/ale'

Plug 'tpope/vim-fugitive'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'Yggdroot/indentLine'

call plug#end()

" Ativa as linhas de indentação
" Ativa as linhas de indentação
  " let g:indent_guides_enable_on_vim_startup = 0

" " Define as cores das linhas de indentação
" let g:indent_guides_guide_size = 1  " Tamanho da linha
" let g:indent_guides_auto_colors = 1 " Cores automáticas

" highlight IndentGuidesEven ctermfg=gray guifg=gray
" highlight IndentGuidesOdd ctermfg=lightgray guifg=lightgray

" " Altere o caractere de indentação se possível
" let g:indent_guides_char = '|'  " Use a barra vertical para as linhas de indentação

" " Se quiser aumentar o contraste
" highlight IndentGuidesEven ctermfg=blue guifg=blue
" highlight IndentGuidesOdd ctermfg=cyan guifg=cyan

" Ativar caracteres de lista (para exibir indentação visual)
set list
set listchars=tab:»\ ,trail:·,extends:>,precedes:<

" Exibe as barras de indentação (|) ao longo do código
let g:indentLine_char = '|'

" Habilita a configuração de barras de indentação ao lado do código
let g:indentLine_concealcursor = 'n'  " Para que não ocultem o cursor

" Exibe a indentação no início do arquivo, sem ocultar o primeiro nível
let g:indentLine_showFirstIndentLevel = 1

" Configuração das cores das barras de indentação
highlight IndentBlanklineChar guifg=#888888 ctermfg=8 " Cor da barra de indentação
highlight IndentBlanklineContextChar guifg=#ffffff ctermfg=15 " Cor do contexto
" Configurações adicionais
syntax enable                   " Habilitar realce de sintaxe
set nu                          " Mostrar números de linha
set relativenumber              " Números de linha relativos
set tabstop=2                   " Tamanho de tabulação de 2 espaços
set shiftwidth=2                " Tamanho da indentação de 2 espaços
set expandtab                   " Usar espaços em vez de tabulações
set mouse=a                     " Habilitar o uso do mouse
set autoindent                  " Manter a indentação automática
set clipboard+=unnamedplus      " Permitir copiar/colar para a área de transferência do sistema
set ignorecase                  " Ignorar caixa em pesquisas
set smartcase                   " Pesquisa com caixa inteligente
set hlsearch                    " Realçar resultados da pesquisa
set incsearch                   " Realçar correspondências conforme você pesquisa
set noswapfile                  " Desativar arquivos de troca
set undodir=~/.vim/undo         " Diretório para arquivos de undo
set undofile                    " Ativar arquivos de undo persistentes
set backupdir=~/.vim/backup     " Diretório para arquivos de backup
set directory=~/.vim/swap       " Diretório para arquivos temporários
set undofile                    " Manter undo depois de fechar o arquivo
set undolevels=1000             " Número máximo de alterações que podem ser desfeitas
set undoreload=10000            " Número de alterações que podem ser desfeitas após recarregar um arquivo
" Habilitar folding por indentação
filetype indent on
set foldmethod=manual
set foldlevel=1

set foldlevelstart=99  " Inicia com o código todo aberto" Teclas de atalho para dobrar e abrir o folding
map <Space>f zc<CR>
map <Space>w zo   " Abre o folding



" Mapeia a tecla Tab para adicionar indentação ao bloco selecionado sem perder a seleção
vnoremap <Tab> >gv

" Mapeia Shift+Tab para remover indentação sem perder a seleção
vnoremap <S-Tab> <gv

" Atalhos da Barbar
nnoremap <silent> [b :BufferPrevious<CR>
nnoremap <silent> ]b :BufferNext<CR>

vnoremap <C-A-c> "+y
nnoremap <C-A-c> "+yy

nnoremap <C-A-a> ggVG

" Mapeamento para navegar entre os splits
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

nnoremap <silent> <A-Left> :vertical resize -5<CR>
nnoremap <silent> <A-Right> :vertical resize +5<CR>
nnoremap <silent> <A-Up> :resize -5<CR>
nnoremap <silent> <A-Down> :resize +5<CR>

" Configurações opcionais
let g:illuminate_ftblacklist = ['nerdtree', 'toggleterm']  " Ignorar certos tipos de arquivo
let g:illuminate_delay = 200  " Ajuste de tempo de atraso no destaque

" Mapa Ctrl + b para abrir o Tagbar
nnoremap <Space>b :TagbarToggle<CR>


"TER O xsel e xcilp instalado

" Atalhos adicionais
map <Space>t :FloatermToggle<CR>
map q :quit<CR>
map <C-s> :w!<CR>
map <C-c> :close<CR>
map <Space>c gcc 
map <Space>d gc 
map <Space>e :NERDTree<CR>
map <Space>v :vsplit <CR>
map <Space>h :split <CR>

" Configurações do Coc.nvim
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-json',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-emmet',
      \ ]

" Configurações da Barbar
let g:barbar_options = {
      \ 'icons': {
      \   'filetype': {
      \     'enabled': 0,
      \   },
      \   'custom_colors': 0,
      \ },
      \ 'closable': 0
      \ }

" Move to previous/next buffer
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next buffer
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Fechar buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restaurar buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Fechar comandos
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Ordenar automaticamente por...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bn <Cmd>BufferOrderByName<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>


