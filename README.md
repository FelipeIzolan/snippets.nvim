# 🛸 snippets.nvim

![image](https://github.com/user-attachments/assets/cab44ca5-d550-4fdb-a2ed-20c7641e5966)

## ⚙️ Setup
```lua
-- lazy.nvim
{
    'hrsh7th/nvim-cmp',
    config = function ()
      local cmp = require 'cmp'
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body) -- setup vim.snippet api
          end,
        },
        sources = {
          { name = 'snippets' }, -- setup snippets.nvim
          ...
        },
        ...
      })
    end,
    dependencies = {
      'FelipeIzolan/snippets.nvim',
      ...
    }
}
```

## 📝 Languages List

- [x] C
- [ ] C++
- [ ] C#
- [ ] Java
- [ ] Go
- [ ] Rust
- [x] HTML
- [ ] CSS
- [ ] JavaScript
- [ ] JSX
- [ ] TypeScript
- [ ] TSX
- [ ] Odin
- [ ] Ruby
- [ ] Lua
- [ ] Python
- [ ] ...

# 📜 License

- [snippets.nvim](https://github.com/FelipeIzolan/snippets.nvim) - MIT
