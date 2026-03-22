return {
  -- TODO switch to main (new version)
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'bash', 'c', 'cmake', 'cpp', 'css', 'diff', 'dockerfile', 'html',
      'javascript', 'json', 'lua', 'luadoc', 'make', 'markdown', 'python',
      'regex', 'rust', 'sql', 'tmux', 'toml', 'vim', 'vimdoc', 'vue', 'yaml',
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
      },
      move = {
        enable = true,
        set_jumps = true,
      },
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
    require('nvim-treesitter-textobjects').setup(opts.textobjects)

    local function textobjects_keymap(action, keymap, module, query)
      local modes
      if action == "select" then
        modes = { "x", "o" }
      elseif action == "move" then
        modes = { "n", "x", "o" }
      elseif action == "swap" then
        modes = "n"
      else
        return
      end

      vim.keymap.set(
        modes,
        keymap,
        function()
          require ("nvim-treesitter-textobjects." .. action)[module](query, "textobjects")
        end
      )
    end

    textobjects_keymap("select", "ip", "select_textobject", "@parameter.inner")
    textobjects_keymap("select", "ap", "select_textobject", "@parameter.outer")
    textobjects_keymap("select", "if", "select_textobject", "@function.inner")
    textobjects_keymap("select", "af", "select_textobject", "@function.outer")
    textobjects_keymap("select", "ic", "select_textobject", "@class.inner")
    textobjects_keymap("select", "ac", "select_textobject", "@class.outer")

    textobjects_keymap("move", "]p", "goto_next_start", "@parameter.inner")
    textobjects_keymap("move", "]f", "goto_next_start", "@function.outer")
    textobjects_keymap("move", "]c", "goto_next_start", "@class.outer")
    textobjects_keymap("move", "[p", "goto_previous_start", "@parameter.inner")
    textobjects_keymap("move", "[f", "goto_previous_start", "@function.outer")
    textobjects_keymap("move", "[c", "goto_previous_start", "@class.outer")
    textobjects_keymap("move", "]P", "goto_next_end", "@parameter.inner")
    textobjects_keymap("move", "]F", "goto_next_end", "@function.outer")
    textobjects_keymap("move", "]C", "goto_next_end", "@class.outer")
    textobjects_keymap("move", "[P", "goto_previous_end", "@parameter.inner")
    textobjects_keymap("move", "[F", "goto_previous_end", "@function.outer")
    textobjects_keymap("move", "[C", "goto_previous_end", "@class.outer")
  end,
}
