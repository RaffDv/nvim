-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
--
--

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Remove trailing whitespace
    vim.cmd([[%s/\s\+$//e]])
    -- Remove multiple consecutive blank lines, keeping only one
    vim.cmd([[%s/\n\{3,}/\r\r/e]])
  end,
})

vim.api.nvim_create_augroup("ActiveWindow", { clear = true })
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  group = "ActiveWindow",
  callback = function()
    vim.wo.winhighlight = "Normal:ActiveWindow"
    vim.api.nvim_set_hl(
      0,
      "ActiveWindow",
      { bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("ColorColumn")), "bg#") }
    )
  end,
})

vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
  group = "ActiveWindow",
  callback = function()
    vim.wo.winhighlight = ""
  end,
})
