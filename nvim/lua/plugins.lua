local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1',
               'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()

    -- Packer can manage itself!
    use 'wbthomason/packer.nvim'

    -- File tree things
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'ryanoasis/vim-devicons'

    -- Color things
    use 'joshdick/onedark.vim'
    --use 'itchyny/lightline.vim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
          require('gitsigns').setup()
        end
    }

    -- Writing things
    use 'habamax/vim-asciidoctor'
    use 'tpope/vim-surround'

    -- Programming things
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'dense-analysis/ale' -- syntax

    -- Search things
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Automatically setup config
    if packer_boostrap then
        require('packer').sync()
    end
end)
