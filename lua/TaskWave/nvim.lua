local M = {}
function M.toggle_checkbox()
  local line = vim.fn.getline('.')
  if line:match('^%s*☐%s+') then
    local new_line = line:gsub('^(%s*)☐%s+', "%1", 1)
    vim.fn.setline('.', new_line)
  elseif line:match('^%s*[✓☑]%s+') then
    local new_line = line:gsub('^(%s*)[✓☑](%s+)', "%1☐%2", 1)
    vim.fn.setline('.', new_line)
  else
    -- Append an unchecked checkbox just before the first non-whitespace character with one space
    local new_line = line:gsub("^(%s*)", "%1☐ ", 1)
    vim.fn.setline('.', new_line)
  end
end

function M.toggle_checkbox_if_todo()
  -- Check if current buffer's file extension is .todo
  local file_extension = vim.fn.expand('%:e')
  
  if file_extension == 'todo' then
    -- Execute the lua command silently
    vim.cmd('silent! lua require("TaskWave.nvim").toggle_checkbox()')
  else
    -- Show message when not a .todo file
    vim.api.nvim_echo({{
      "Not a .todo file",
      "WarningMsg"
    }}, false, {})
  end
end

function M.setup()
  -- Create an autocmd that only sets up the keybinding for .todo files
  vim.api.nvim_set_keymap('n', 'tt', 
  [[:lua require('TaskWave.nvim').toggle_checkbox_if_todo()<CR>]], 
  { noremap = true, silent = true })
end

return M