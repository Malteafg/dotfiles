vim.cmd("let g:vimtex_view_method = 'zathura'")
vim.cmd('let g:vimtex_syntax_conceal_disable = 1')

vim.cmd('autocmd FileType tex inoremap ,sl \\begin{frame}<Enter>\\frametitle{}<Enter><Enter>(<>)<Enter><Enter>\\end{frame}<Enter><Enter>(<>)<Esc>6kf}i')

vim.cmd('autocmd FileType tex inoremap ,mt \\begin{matrix}  \\end{matrix}<Esc>Bhi')
vim.cmd('autocmd FileType tex inoremap ,mp \\begin{pmatrix}  \\end{pmatrix}<Esc>Bhi')
vim.cmd('autocmd FileType tex inoremap ,mb \\begin{bmatrix}  \\end{bmatrix}<Esc>Bhi')
vim.cmd('autocmd FileType tex inoremap ,mB \\begin{Bmatrix}  \\end{Bmatrix}<Esc>Bhi')
vim.cmd('autocmd FileType tex inoremap ,mv \\begin{vmatrix}  \\end{vmatrix}<Esc>Bhi')
vim.cmd('autocmd FileType tex inoremap ,mV \\begin{Vmatrix}  \\end{Vmatrix}<Esc>Bhi')

vim.cmd('autocmd FileType tex inoremap ,ai \\begin{align*}<Enter><Enter>\\end{align*}<Enter>(<>)<Esc>2ki<Tab>')
vim.cmd('autocmd FileType tex inoremap ,an \\begin{align}<Enter><Enter>\\end{align}<Enter>(<>)<Esc>2ki<Tab>')

vim.cmd('autocmd FileType tex inoremap ,se \\section{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,sn \\section*{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,1se \\subsection{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,1sn \\subsection*{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,2se \\subsubsection{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,2sn \\subsubsection*{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,3se \\subsubsubsection{}<Enter>(<>)<Esc>k$i')
vim.cmd('autocmd FileType tex inoremap ,3sn \\subsubsubsection*{}<Enter>(<>)<Esc>k$i')

vim.cmd('autocmd FileType tex inoremap ,fr \\frac{}{(<>)}(<>)<Esc>10hi')

vim.cmd('inoremap <C-@> <C-Space>')
vim.cmd('autocmd FileType tex inoremap <C-Space> <Esc>/(<>)<CR>:noh<CR>cf)')
vim.cmd('nnoremap <C-@> <C-Space>')
vim.cmd('autocmd FileType tex nnoremap <C-Space> <Esc>/(<>)<CR>:noh<CR>cf)')