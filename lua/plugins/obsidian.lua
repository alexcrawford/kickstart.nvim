return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/Notes/personal',
      },
    },
    daily_notes = {
      template = 'daily.md',
    },
    templates = {
      folder = 'templates',
    },
  },
  keys = {
    { '<leader>ox', '<cmd>ObsidianExtractNote<CR>', desc = '[O]bsidian E[x]tract', mode = 'v' },
    { '<leader>ol', '<cmd>ObsidianLink<CR>', desc = '[O]bsidian [L]ink', mode = 'v' },
    { '<leader>ot', '<cmd>ObsidianToday<CR>', desc = '[O]bsidian [T]oday' },
    { '<leader>ob', '<cmd>ObsidianBacklinks<CR>', desc = '[O]bsidian [B]acklinks' },
    { '<leader>of', '<cmd>ObsidianFollowLink<CR>', desc = '[O]bsidian [F]ollow Link' },
    { '<leader>on', '<cmd>ObsidianNew<CR>', desc = '[O]bsidian [N]ew' },
    { '<leader>oo', '<cmd>ObsidianOpen<CR>', desc = '[O]bsidian [O]pen' },
  },
}
