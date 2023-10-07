vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.updatetime = 300
vim.o.termguicolors = true
vim.o.backup = false
vim.o.cmdheight= 1
vim.o.conceallevel = 0                        -- so that `` is visible in markdown files
vim.o.fileencoding = "utf-8"                  
vim.o.hlsearch = true                         
vim.o.ignorecase = true                       
vim.o.mouse = "a"                             
vim.o.pumheight = 10                          -- pop up menu heigh
vim.o.showmode = false
vim.o.showtabline = 1  
vim.o.smartcase = true 
vim.o.smartindent = true
vim.o.splitbelow = true 
vim.o.splitright = true
vim.o.swapfile = false
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.undofile = true
vim.o.writebackup = false 
vim.o.expandtab = true
vim.o.cursorline = true 
vim.o.cursorcolumn = true
vim.o.laststatus = 3
vim.o.showcmd = false
vim.o.ruler = false 
vim.o.numberwidth = 4 
vim.o.wrap = false 
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8  
vim.o.guifont = "monospace:h17" 
vim.o.linebreak = true 
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.fillchars.eob = " "                     -- show empty lines at the end of a buffer as ` ` {default `~`}
vim.opt.shortmess:append "c"                    -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
vim.opt.whichwrap:append "<,>,[,],h,l"          -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.iskeyword:append "-"                    -- treats words with `-` as single words
vim.opt.formatoptions:remove { "c", "r", "o" }  -- This is a sequence of letters which describes how automatic formatting is to be done
