runtime ./modules/plugs.vim

set completeopt=menuone,noinsert,noselect
lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}

" Tags
set autochdir
