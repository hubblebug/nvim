"The following lines between the [call] commands are for calling vim-plug plugins.

"call plug#begin('~/.local/share/nvim/plugged')

call plug#begin()

Plug 'vim-airline/vim-airline'

Plug 'rafi/awesome-vim-colorschemes'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

"Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'tversteeg/registers.nvim'

Plug 'yamatsum/nvim-cursorline'

"Plug 'dracula/vim',{'as':'dracula'}

"NERDTree and related Plugins
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

call plug#end()

"Plugin commands below

"Registers
"let g:registers_return_symbol = "\n" "'⏎' by default
"let g:registers_tab_symbol = "\t" "'·' by default
"let g:registers_space_symbol = "." "' ' by default
"let g:registers_register_key_sleep = 1 "0 by default, seconds to wait before closing the window when a register key is pressed
"let g:registers_show_empty_registers = 0 "1 by default, an additional line with the registers without content

let mapleader=","

"colorscheme deep-space

set clipboard+=unnamedplus
set belloff=all

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

syntax on

"Searching

"Sets highlighted searching
set hlsearch

"Sets searching while typing instead of just after pressing enter
set incsearch

"Ignores case when searching
set ignorecase

"Ignores search patterns if all are lowercase
set smartcase


"Enables Autoindent
set autoindent
"Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

"Setting display of characters
set list
set listchars=
set listchars+=tab:░\·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:⣿

"These remap multiple buffer keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"These remap the arrow keys to resize the buffers
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
