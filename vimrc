
        set nocompatible
        filetype off
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()

        Plugin 'VundleVim/Vundle.vim'
        Plugin 'dracula/vim'
        Plugin 'xuhdev/vim-latex-live-preview'
        Plugin 'vim-airline/vim-airline'
        Plugin 'mattn/emmet-vim'
        Plugin 'terryma/vim-multiple-cursors'
        Plugin 'scrooloose/nerdtree'
        Plugin 'JamshedVesuna/vim-markdown-preview'
        Plugin 'junegunn/goyo.vim'
        "Plugin 'w0rp/ale'

        call vundle#end()
        filetype plugin indent on


" Some basics:
        "不兼容vi:
	    set nocompatible
	    filetype plugin on
	    syntax on
	    set encoding=utf-8
        set backspace=indent,eol,start
        "一个tab所占列数为4:
        set tabstop=4
        "自动缩进时为4个空格:
        set shiftwidth=4
        "tab自动转换为空格:
        set expandtab
        "输入tab实际所占列数:
        set softtabstop=4
        "自动缩进
        set autoindent
        "不备份
        set  nobackup
        "设置行号:
        set number
        "设置相对行号:
        set relativenumber
        "行号宽度:
        set numberwidth=4
        set clipboard=unnamedplus
        set cursorline
        set laststatus=2
        set guifont=InconsolataGo\ Nerd\ Font\ 14


        "tab操作:
        nnoremap <C-t> :tabnew<cr>   
        nnoremap th : tabfirst<cr>
        nnoremap tj :tabprevious<cr>
        nnoremap tk :tabnext<cr>
        nnoremap tl : tablast<cr> 
        nnoremap tx : tabclose<cr>




        " Enable autocompletion:
     	set wildmode=longest,list,full
     	set wildmenu

        "隐藏gui界面的菜单 工具栏 滚动条
        set guioptions-=m
        set guioptions-=T
        set guioptions-=r
        set guioptions-=L
        set guioptions-=b 

        autocmd filetype html,css,htmldjango,javascript set shiftwidth=2 tabstop=2 softtabstop=2


        "dracula配色:
        let g:dracula_italic = 0
        color dracula
        hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
        hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold guifg=#282a36 guibg=#50fa7b gui=NONE
        hi! Normal ctermbg=NONE ctermfg=NONE
        hi! NonText ctermbg=NONE ctermfg=NONE




        "禁用方向键:
        noremap <Up> <Nop>
        noremap <Down> <Nop>
        noremap <Left> <Nop>
        noremap <Right> <Nop>

"###############youcompleteme#########################

        let g:ycm_server_python_interpreter = '/usr/bin/python'
        let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
        let g:ycm_seed_identifiers_with_syntax = 1
        "let g:ycm_collect_identifiers_from_tags_files=1
        "let g:ycm_show_diagnostics_ui = 0
        "set completeopt-=preview
        "nnoremap <leader>d :YcmCompleter GoTo<CR>
        "nnoremap <leader>gd :YcmCompleter GetDoc<CR>
        "#########################
 


"vim-airline:

        let g:airline_powerline_fonts=1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#ale#enabled = 1
        let g:airline_theme='dracula'
        let g:powerline_pycmd="py3"




"LaTex
        let g:livepreview_previewer = 'zathura'
        let g:livepreview_engine = 'xelatex'
        "autocmd FileType tex inoremap <F5> <Esc>:!xelatex<space><c-r>%<Enter>a
        "autocmd FileType tex nnoremap <F5> :!xelatex<space><c-r>%<Enter>





	     set splitbelow
	     set splitright

         nnoremap <buffer> <F4> :exec '!python' shellescape(@%, 1)<cr>
	     map <F6> :setlocal spell! spelllang=en_us,es<CR>

	     map <F10> :Goyo<CR>
	     inoremap <F10> <esc>:Goyo<CR>a

	     set wildmode=longest,list,full
	     set wildmenu

	     nnoremap <C-t> :tabnew<cr>

""NERDTree
         map <C-y> : NERDTreeToggle<CR>


"vim-emmet:
         let g:user_emmet_expandabbr_key = '<c-l>'
         "######Enable just for html/css
         let g:user_emmet_mode='a'
         let g:user_emmet_install_global = 0
         autocmd FileType html,css EmmetInstall


if !has('gui_running')
  set t_Co=256
endif


