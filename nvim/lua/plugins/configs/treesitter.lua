local options = {
  ensure_installed = { "lua" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options

-- " start nerdtree when vim is started without file arguments.
-- autocmd stdinreadpre * let s:std_in=1
-- autocmd vimenter * if argc() == 0 && !exists('s:std_in') | nerdtree | endif
-- " exit vim if nerdtree is the only window remaining in the only tab.
-- autocmd bufenter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:nerdtree') && b:nerdtree.istabtree() | quit | endif
-- " open the existing nerdtree on each new tab.
-- autocmd bufwinenter * if getcmdwintype() == '' | silent nerdtreemirror | endif
