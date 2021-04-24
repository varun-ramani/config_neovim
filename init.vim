runtime ./modules/plugs.vim
runtime ./modules/keymaps.vim
runtime ./modules/editing.vim 
runtime ./modules/ide.vim


lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}

