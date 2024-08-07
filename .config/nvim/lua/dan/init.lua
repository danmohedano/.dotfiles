require("dan.options")
require("dan.utils.lazy-spec")

-- Colorscheme
ADD_PLUGIN("dan.plugins.colorscheme")
-- Utilities
ADD_PLUGIN("dan.plugins.treesitter")
ADD_PLUGIN("dan.plugins.telescope")
ADD_PLUGIN("dan.plugins.fugitive")
ADD_PLUGIN("dan.plugins.harpoon")
ADD_PLUGIN("dan.plugins.undotree")
ADD_PLUGIN("dan.plugins.trouble")
ADD_PLUGIN("dan.plugins.lualine")
ADD_PLUGIN("dan.plugins.pairs")
-- LSP
ADD_PLUGIN("dan.plugins.lsp")

require("dan.plugins.lazy")
require("dan.mappings")
require("dan.plugins.julials")
