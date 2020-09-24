# Slim Vim

A simple `.vimrc` and `.tmux.conf` file

Using vim and tmux together is a surprisingly good development setup that can be done all on a terminal.
Useful for when you need to do a bit of devving on a server but don't want to faff around with vundle

## Config explained


### Tabs

```
set tabstop=4
set shiftwidth=4
set expandtab
```

By default vim will insert tab characters and they'll be 8 spaces long.

This converts them to spaces and makes them 4 spaces long


### Auto Indent

```
set autoindent
```

This will automatically move your cursor to the right position when you start a new line:

**Before**

```
function hello() {
    test// <-- hit return here
// <-- cursor will go here
}
```

**After**

```
function hello() {
    test// <-- hit return here
    // <-- cursor will go here
}
```

### Wildmenu

```
set wildmenu
```

Improves command mode completion, helps with the fuzzy search as you can tab through results

### Leader

```
let mapleader = ","
```

The leader key is your go-to shortcut key. This can be changed to whatever you feel more comfortable with, but comma works quite well

### JF

```
inoremap jf <esc>
```

Very simply makes it easier to drop out of insert mode into normal mode, just type jf

### Fuzzy Search

```
nnoremap <leader><leader> :e **/*
```

This one is really useful, this just uses vim's autocomplete for a poor man's fuzzy search.

You'll end up with `:e **/*` in command mode, you can search by typing your partial file name and hitting tab, e.g. `:e **/*TestCase`

### Highlighting

```
nnoremap <leader><space> :nohl<cr>
```

This clears vim's highlights after using `/`

### Easy command mode

```
nnoremap ; :
```

Instead of having to press `shift and ;` you can just press `;`

### Tabs

```
nnoremap <C-n> :tabnew<cr>
nnoremap <C-l> :tabn<cr>
nnoremap <C-h> :tabp<cr>
```

Vim has pretty nice tab support out the box, these mappings just make it a bit more intuitive

`Ctrl+n` - new tab

`Ctrl+l` - next tab

`Ctrl+h` - previous tab

## Tips

Asides from the basic vim shortcuts and modes, there are some other nifty features that come out the box

### Shell Commands

You can execute shell commands with `:!`

For example `:!pwd`

### Splits

If you're not familiar with vim splits, you can split a window in half with either `:vsp` or `:sp`

You can cycle through splits by double-tapping `Ctrl-W`

### File explorer

If you try to `:e` a directory, vim will instead open a file explorer.

You can open one in your root directory with `:e .`

# Contributing

If you've got any other ideas for simple vim config, send over a PR
