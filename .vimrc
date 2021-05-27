syntax enable
set background=dark "デフォルトのbackgroundのカラーテーマを設定。lightの場合はlight
colorscheme solarized
let g:solarized_termcolors=256

" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" ファイルを上書きする前にバックアップを作ることを無効化
set nobackup
" vim の矩形選択で文字が無くても右へ進める
set virtualedit=block
" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start
" 全角文字専用の設定
set ambiwidth=double
" wildmenuオプションを有効(vimバーからファイルを選択できる)
set wildmenu

"----------------------------------------
" 検索
"----------------------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch

"----------------------------------------
" 表示設定
"----------------------------------------
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" Windowsでパスの区切り文字をスラッシュで扱う
set shellslash
" 対応する括弧やブレースを表示
set showmatch matchtime=1
" インデント方法の変更
set cinoptions+=:0
" メッセージ表示欄を2行確保
set cmdheight=2
" ステータス行を常に表示
set laststatus=2
" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd
" 省略されずに表示
set display=lastline
" タブ文字を CTRL-I で表示し、行末に $ で表示する
set list
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~
" コマンドラインの履歴を10000件保存する
set history=10000
" コメントの色を水色
"hi Comment ctermfg=3
" 入力モードでTabキー押下時に半角スペースを挿入
set expandtab
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅を指定
set softtabstop=2
" ファイル内にあるタブ文字の表示幅
set tabstop=2
" ツールバーを非表示にする
set guioptions-=T
" yでコピーした時にクリップボードに入る
set guioptions+=a
" メニューバーを非表示にする
set guioptions-=m
" 右スクロールバーを非表示
set guioptions+=R
" 対応する括弧を強調表示
set showmatch
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" スワップファイルを作成しない
set noswapfile
" 検索にマッチした行以外を折りたたむ(フォールドする)機能
set nofoldenable
" タイトルを表示
set title
" 行番号の表示
set number
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
" シンタックスハイライト
syntax on
" すべての数を10進数として扱う
set nrformats=
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~
" バッファスクロール
set mouse=a



" UTF-8化
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile

" 行番号表示
set number
" 現在の行を強調表示
set cursorline
" 行末まで移動可能
set virtualedit=onemore
" smartindentの設定
set smartindent
" ビープ音を可視化
"set visualbell

" 対応する括弧の強調表示
set showmatch
" シンタックスハイライトの有効化
"syntax on

" ステータスラインの有効化
set laststatus=2


" マウス操作の有効化 & ホイール操作の有効化
set mouse=a
set ttymouse=xterm2

" tabを半角スペース化
set expandtab
" 行頭以外のtabをスペース2個分にする
set tabstop=2
" 行頭以外のtabをスペース2個分にする
set shiftwidth=2

" 大文字小文字区別せず検索
set ignorecase
" 検索文字列に大文字が含まれていれば区別して検索
set smartcase
" 検索文字列を順次ヒットさせる
set incsearch
" 検索文字列が最後まで行ったら最初に戻る
set wrapscan
" 検索文字をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" NERDTRee用
nnoremap <silent><C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"ここからdeoplete本体
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

"ここまでdeoplete本体
"Vim用自動補完プラグイン（任意）
Plug 'Shougo/neco-vim'

"Ruby用自動補完プラグイン（任意）
Plug 'takkii/Bignyanco'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-rails'


Plug 'altercation/vim-colors-solarized' " solarized
"Plug 'croaker/mustang-vim'              " mustang
"Plug 'jeffreyiacono/vim-colors-wombat'  " wombat
"Plug 'nanotech/jellybeans.vim'          " jellybeans
"Plug 'vim-scripts/Lucius'               " lucius
"Plug 'vim-scripts/Zenburn'              " zenburn
"Plug 'mrkn/mrkn256.vim'                 " mrkn256
"Plug 'jpo/vim-railscasts-theme'         " railscasts
"Plug 'therubymug/vim-pyte'              " pyte
"Plug 'tomasr/molokai'                   " molokai
"Plug 'chriskempson/vim-tomorrow-theme'  " tomorrow night
"Plug 'vim-scripts/twilight'             " twilight
"Plug 'w0ng/vim-hybrid'                  " hybrid
"Plug 'freeo/vim-kalisi'                 " kalisi
"Plug 'morhetz/gruvbox'                  " gruvbox
"Plug 'toupeira/vim-desertink'           " desertink
"Plug 'sjl/badwolf'                      " badwolf
"Plug 'itchyny/landscape.vim'            " landscape
"Plug 'joshdick/onedark.vim'             " onedark in atom
"Plug 'gosukiwi/vim-atom-dark'           " atom-dark


call plug#end()

let g:deoplete#enable_at_startup = 1

if !has('gui_running')
  set t_Co=256
endif

let NERDTreeShowHidden = 1

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'


