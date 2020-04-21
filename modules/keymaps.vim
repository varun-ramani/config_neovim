" File management
nmap <C-p> :FZF<CR>
nmap <C-n> :NERDTreeToggle<CR>


" Some keymaps for navigating the editor
nmap <Space> <Leader>

nmap <Leader>wl :wincmd l<CR>
nmap <Leader>wk :wincmd k<CR>
nmap <Leader>wj :wincmd j<CR>
nmap <Leader>wh :wincmd h<CR>

nmap <Leader>sl :vsp<CR><Leader>wl
nmap <Leader>sk :sp<CR>
nmap <Leader>sj :sp<CR><Leader>wj
nmap <Leader>sh :vsp<CR>

nmap <Leader>q :quit<CR>
nmap <Leader>wf :write<CR>

nmap <Leader>ce :edit ~/.config/nvim/init.vim<CR>
nmap <Leader>cr :source ~/.config/nvim/init.vim<CR>

tnoremap <Esc> <C-\><C-n>
