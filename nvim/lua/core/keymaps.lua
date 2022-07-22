-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'jk', '<Esc>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close

-- fzf
map('n', '<leader>ff', ':FzfLua files<CR>')
map('n', '<leader>of', ':FzfLua oldfiles<CR>')
map('n', '<leader>fb', ':FzfLua buffers<CR>')
map('n', '<leader>fq', ':FzfLua quickfix<CR>')
map('n', '<leader>fl', ':FzfLua loclist<CR>')
map('n', '<leader>ft', ':FzfLua tabs<CR>')
map('n', '<leader>fa', ':FzfLua args<CR>')

-- fzf-git
map('n', '<leader>gf', ':FzfLua git_files<CR>')
map('n', '<leader>gs', ':FzfLua git_status<CR>')
map('n', '<leader>gc', ':FzfLua git_commits<CR>')
map('n', '<leader>gbc', ':FzfLua git_bcommits<CR>')
map('n', '<leader>gb', ':FzfLua git_branches<CR>')
map('n', '<leader>gss', ':FzfLua git_branches<CR>')

--fzf-search
map('n', '<leader>sr', ':FzfLua grep<CR>')
map('n', '<leader>sl', ':FzfLua live_grep<CR>')
map('n', '<leader>qf', ':FzfLua grep_cword<CR>')
map('n', '<leader>qfv', ':FzfLua grep_visual<CR>')
map('n', '<leader>sp', ':FzfLua grep_project<CR>')
map('n', '<leader>sc', ':FzfLua lgrep_curbuf<CR>')


