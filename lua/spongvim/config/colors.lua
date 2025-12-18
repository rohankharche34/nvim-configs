local M = {}

-- toggle transparency here
M.transparent = true

function M.apply()
  if M.transparent then
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
end

return M

