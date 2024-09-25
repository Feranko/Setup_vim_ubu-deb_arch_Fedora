source /$HOME/vim_files/c_Run.vim
source /$HOME/vim_files/go_Run.vim
source /$HOME/vim_files/cpp_Run.vim
source /$HOME/vim_files/lua_Run.vim
source /$HOME/vim_files/rust_Run.vim
source /$HOME/vim_files/copy_Run.vim
source /$HOME/vim_files/java_Run.vim
source /$HOME/vim_files/ruby_Run.vim
source /$HOME/vim_files/python_Run.vim
source /$HOME/vim_files/javascript_Run.vim


call plug#begin("$HOME/.vim/plugged")
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
call plug#end()

nnoremap <F9> :NERDTree<CR>
nnoremap <F10> :call Copy()<CR>
autocmd VimEnter :PlugInstall | q

autocmd FileType c nnoremap <F2> :call Build_C()<CR>
autocmd FileType c nnoremap <F3> :call Run_C()<CR>
autocmd FileType c nnoremap <F4> :call Run_Ray()<CR>

autocmd FileType go nnoremap <F2> :call Run()<CR>
autocmd FileType go nnoremap <F3> :call Build()<CR>
autocmd FileType go nnoremap <F4> :call Build_and_ruN()<CR>
autocmd FileType go nnoremap <F5> :call Go_tidY()<CR>

autocmd FileType cpp nnoremap <F2> :call Build_cpp()<CR>
autocmd FileType cpp nnoremap <F3> :call Run_cpp()()<CR>

autocmd FileType lua nnoremap <F2> :call Run_lua()()<CR>

autocmd FileType rust nnoremap <F2> :call Build_Rust()<CR>
autocmd FileType rust nnoremap <F3> :call Run_Rust()<CR>
autocmd FileType rust nnoremap <F4> :call Build_Cargo()<CR>
autocmd FileType rust nnoremap <F5> :call Run_Cargo()<CR>
autocmd FileType rust nnoremap <F6> :call Build_Release()<CR>
autocmd FileType rust nnoremap <F7> :call Build_Release_win()<CR>

autocmd FileType java nnoremap <F2> :call Run_java()<CR>

autocmd FileType ruby nnoremap <F2> :call Run_ruby()<CR>

autocmd FileType python nnoremap <F2> :call Run_Py()<CR>
autocmd FileType python nnoremap <F3> :call Build_Py()<CR>
autocmd FileType python nnoremap <F4> :call Build_kivy()<CR>

autocmd FileType javascript nnoremap <F2> :call Run_js()<CR>
autocmd FileType typescript nnoremap <F3> :call Run_ts()<CR>
    
