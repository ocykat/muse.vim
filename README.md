# Muse: A simple yet elegant colorscheme for Vim

## Introduction

Muse colorscheme is a personal creation of mine. I was a fan of dark colorschemes until I had to switch back and forth between a dark editor window and another window with light background.

This colorscheme is super standard: white background and a small number of text colors: black (of course), blue and purple.

![screenshot](https://github.com/ocykat/muse.vim/blob/master/screenshot.png)

## Required packages

* `vim-airline/vim-airline` for tabline and statusline
* `vim-airline/vim-airline-themes` for themes for `vim-airline`
* `sheerun/vim-polyglot` for syntax-highlighting enhancement
* this package

## Usage

Best airline theme to go with this colorscheme is `papercolor`.

To use this colorscheme, add the following lines to your `.vimrc`:
```vim
syntax on
set background=light
colorscheme muse
let g:airline_theme='papercolor'
```
