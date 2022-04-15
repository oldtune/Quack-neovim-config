-- local fn = vim.fn

-- --check for packer and install if missing
-- local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
-- if fn.empty(fn.glob(install_path)) > 0 then
--     PACKER_BOOTSTRAP = fn.system {
--         "git",
--         "clone",
--         "--depth",
--         "1",
--         "https://github.com/wbthomason/packer.nvim",
--         install_path
--     }
--     print "Installing packer.nvim"
--     vim.cmd [[packadd packer.nvim]]
-- end

-- --Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
-- ]]

-- --use a static call so we don't error on first use
-- local status_ok, packer = pcall(require, 'packer')
-- if not status_ok then
--     print "something went wrong"
--     return
-- end

-- packer.init {
--     display = {
--         open_fn = function()
--             return require('packer.util').float { border = 'rounded' }
--         end,
--     },
-- }

require('mappings')
require('plugins')
require('options')
