local M = {}

function M.append_checkbox()
  local line = vim.fn.getline('.')
  -- Check if the line already has a checkbox (☐, ✓, or other variants)
  if not line:match('^%s*☐') and not line:match('^%s*✓') and not line:match('^%s*☑') then
    vim.fn.setline('.', '☐ ' .. line)
  end
end

function M.setup()
  -- Create an autocmd that only sets up the keybinding for .todo files
  vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = "*.todo",
    callback = function()
      vim.api.nvim_buf_set_keymap(0, 'n', 'tt', ':lua require("todo-checkbox").append_checkbox()<CR>', 
        { noremap = true, silent = true })
    end
  })
end

return M