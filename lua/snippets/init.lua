local loader = require('snippets.loader')
local M = {}
M.source = {}

function M.source:complete(_, callback)
  local filetype = vim.bo.filetype
  local snippets = loader(filetype)

  callback(snippets)
end

function M.setup()
  require('cmp').register_source('snippets', M.source)
end

return M
