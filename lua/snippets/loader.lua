local cmp = require('cmp')
local uv = vim.uv

local cache = {}

local function body2doc(body, filetype)
  local i, n = body:match('${(%d):(%S+)}')

  if i and n then
    body = body:gsub('${(%d):(%S+)}', n):gsub('$' .. i, n)
  end

  return
      '```' .. filetype ..
      '\n' ..
      body:gsub('$%d', '') ..
      '\n```'
end

local function read_file(path)
  local fd = assert(uv.fs_open(path, "r", 438))
  local stat = assert(uv.fs_fstat(fd))
  local data = assert(uv.fs_read(fd, stat.size, 0))
  assert(uv.fs_close(fd))
  return data
end

return function (filetype)
  if cache[filetype] then
    return cache[filetype]
  end

  local dirname = debug.getinfo(1).source:sub(2, -11)
  local ok, data = pcall(read_file, dirname .. filetype .. '/init.lua')

  if not ok then
    return nil
  end

  local loaded = load(data)()
  local cmp_items = {}

  for _, item in ipairs(loaded) do
    local body = type(item.body) == 'table' and table.concat(item.body, '\n') or item.body

    table.insert(cmp_items, {
      label = item.prefix,
      documentation = body2doc(body, filetype),
      insertText = body,
      insertTextMode = cmp.lsp.InsertTextMode.AdjustIndentation,
      insertTextFormat = cmp.lsp.InsertTextFormat.Snippet,
      kind = cmp.lsp.CompletionItemKind.Snippet,
    })
  end

  cache[filetype] = cmp_items
  return cmp_items
end
