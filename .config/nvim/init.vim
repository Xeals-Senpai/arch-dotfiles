" ------------------------------------------------------------
" Xeals Neovim Configuration
" Clean baseline for Arch Installer v0.1.0
" ------------------------------------------------------------

" -----------------------------
" Syntax & Filetypes
" -----------------------------

syntax on
filetype plugin indent on

" -----------------------------
" UI
" -----------------------------

set number
set relativenumber
set cursorline
set showcmd
set showmode
set termguicolors
set signcolumn=yes
set laststatus=2
set ruler

" -----------------------------
" Indentation
" -----------------------------

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

" -----------------------------
" Search
" -----------------------------

set ignorecase
set smartcase
set incsearch
set hlsearch

" -----------------------------
" General Behaviour
" -----------------------------

set hidden
set mouse=a
set clipboard=unnamedplus

set splitbelow
set splitright

set scrolloff=8
set sidescrolloff=8

set wrap
set linebreak

" Persistent undo
set undofile

" -----------------------------
" Leader Key
" -----------------------------

let mapleader=" "

" -----------------------------
" Keybindings
" -----------------------------

" Save file
nnoremap <leader>w :write<CR>

" Quit
nnoremap <leader>q :quit<CR>

" Clear search highlighting
nnoremap <leader>h :nohlsearch<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l