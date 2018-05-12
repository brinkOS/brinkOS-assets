if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/jbrink/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/home/jbrink/.vim/after,/home/jbrink/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/jbrink/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/jbrink/.cache/dein'
let g:dein#_runtime_path = '/home/jbrink/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/jbrink/.cache/dein/.cache/.vimrc'
let &runtimepath = '/home/jbrink/.vim,/usr/share/vim/vimfiles,/home/jbrink/.cache/dein,/home/jbrink/.cache/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/home/jbrink/.cache/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/jbrink/.vim/after,/home/jbrink/.cache/dein/repos/github.com/Shougo/dein.vim'
filetype off
