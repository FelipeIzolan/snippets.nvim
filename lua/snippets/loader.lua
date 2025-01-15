local cmp = require('cmp')
local uv = vim.uv

local cache = {}
local extends = {
  ['typescript'] = { 'javascript' },
  ['typescriptreact'] = { 'javascript', 'typescript' },
  ['javascriptreact'] = { 'javascript' }
}

local function body2doc(body, filetype)
  for _ = 1, 3 do
    local a, b = body:match('.*${(%d):(%S+)}.*')
    if b then
      body = body:gsub('${' .. a .. ':' .. b .. '}', b):gsub('$' .. a, b)
    else
      break
    end
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

local function load_file(filetype)
  local dirname = debug.getinfo(1).source:sub(2, -11)
  local ok, data = pcall(read_file, dirname .. filetype .. '/init.lua')

  if not ok then
    return nil
  end

  local loaded = load(data)()
  local items = {}

  for _, item in ipairs(loaded) do
    local body = type(item.body) == 'table' and table.concat(item.body, '\n') or item.body

    table.insert(items, {
      label = item.prefix,
      documentation = body2doc(body, filetype),
      insertText = body,
      insertTextMode = cmp.lsp.InsertTextMode.AdjustIndentation,
      insertTextFormat = cmp.lsp.InsertTextFormat.Snippet,
      kind = cmp.lsp.CompletionItemKind.Snippet,
    })
  end

  cache[filetype] = items
  return items
end

return function(filetype)
  local extend = extends[filetype]
  local base = cache[filetype] or load_file(filetype)

  if extend then
    for _, e_filetype in ipairs(extend) do
      local items = cache[e_filetype] or load_file(e_filetype)
      base = vim.list_extend(base, items)
    end
  end

  return base
end
