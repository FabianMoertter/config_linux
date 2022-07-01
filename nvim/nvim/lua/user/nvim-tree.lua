local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then 
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end


-- setup nvim tree
require("nvim-tree").setup({
  view = {
  },
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = falsee,
})


