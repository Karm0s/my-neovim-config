local wk = require('which-key')

wk.register({
  ['<leader>'] = {
    f = {
      name = "+Telescope",
      f = {'<cmd>Telescope find_files<cr>', 'Find File'},
      r = {'<cmd>Telescope oldfiles<cr>', 'Open Recent File'},
      n = {'<cmd>enew<cr>', 'New File'},
      t = {'<cmd>Telescope live_grep<cr>', 'Grep'},
      b = {'<cmd>Telescope buffers<cr>', 'Buffers'},
      s = {'<cmd>Telescope grep_string<cr>', 'Project'},
      g = {
        name = '+Git',
        b = {'<cmd>Telescope git_branches<cr>', 'git Branches'},
        c = {'<cmd>Telescope git_commits<cr>', 'git Commits'},
      },
    },

    e = {'<cmd>NvimTreeToggle<cr>', 'Explorer'},

    w = {
      name = "+Window",
      h = {"<cmd>vsplit<CR>", "split left"},
      j = {"<cmd>split<bar>wincmd j<CR>", "split down"},
      k = {"<cmd>split<CR>", "split up"},
      l = {"<cmd>vsplit<bar>wincmd l<CR>", "split right"},
    },

    c = {'<cmd>bdelete<cr>', 'Close Buffer'},

    q = {
      name = '+Quit',
      B = {'<cmd><cr>', 'All other buffers'},
      W = {'<cmd>wincmd o<cr>', 'All other windows'}
    },

    g = {
      name = '+go',
      D = {'<cmd>lua vim.lsp.buf.declaration()<CR>', 'declaration'},
      d = {'<cmd>lua vim.lsp.buf.definition()<CR>', 'definition'},
      i = {'<cmd>lua vim.lsp.buf.implementation()<CR>', 'implementation'},
      t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', 'type definition'}
    },

    l = {
      name = '+lsp',
      r = {'<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename'},
      f = {'<cmd>lua vim.lsp.buf.references()<cr>', 'References'},
      l = {'<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>', 'List diagnostics'},
      h = {'<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover'},
      o = {'<cmd>lua vim.diagnostic.open_float()<cr>', 'Open float'},
      n = {'<cmd>lua vim.diagnostic.goto_next()<cr>', 'Next diagnostic'},
      p = {'<cmd>lua vim.diagnostic.goto_prev()<cr>', 'Previous diagnostic'},
      s = {'<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Signature help'},
      a = {'<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code action'},
      w = {'<cmd>lua vim.lsp.buf.workspace_symbol()<cr>', 'Workspace symbol'}
    }
  }
})

