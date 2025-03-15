local M = {}

function M.append_checkbox()
  local line = vim.fn.getline('.')
  if not line:match('^%s*%-[ ]%[ ]') then
    vim.fn.setline('.', '- [ ] ' .. line)
  end
end

function M.setup()
  vim.api.nvim_set_keymap('n', '<A-t>', ':lua require("todo-checkbox").append_checkbox()<CR>', { noremap = true, silent = true })
end

return M