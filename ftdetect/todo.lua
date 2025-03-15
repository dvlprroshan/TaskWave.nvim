local ft = "todo"

vim.filetype.add({
  extension = {
    todo = ft,
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = ft,
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<A-t>", ":lua require('todo-checkbox').add_checkbox()<CR>", { noremap = true, silent = true })
  end,
})