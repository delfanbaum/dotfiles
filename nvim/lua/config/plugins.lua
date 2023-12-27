local use = require('packer').use

return require('packer').startup(function()

    -- Packer can manage itself!
    use 'wbthomason/packer.nvim'

    -- File tree things
    use {'preservim/nerdtree', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}
    use {'Xuyuanp/nerdtree-git-plugin', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}
    use {'ryanoasis/vim-devicons', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}



    -- Writing things
    use {'habamax/vim-asciidoctor', ft = {'asciidoc'} }

    -- "Focus mode" things
    -- silly things
    use 'seandewar/killersheep.nvim'


    -- Linting, formatting
    use {'jose-elias-alvarez/null-ls.nvim',
            requires = {
                "nvim-lua/plenary.nvim"
            }
        }

    -- Debugger
    use {
        "mfussenegger/nvim-dap-python",
        module = { "dap-python" },
        requires = {
            "theHamsta/nvim-dap-virtual-text",
            "rcarriga/nvim-dap-ui",
            "nvim-telescope/telescope-dap.nvim",
        }
    }

    use {
      "mfussenegger/nvim-dap",
      opt = true,
      module = { "dap" },
      requires = {
        "theHamsta/nvim-dap-virtual-text",
        "rcarriga/nvim-dap-ui",
        "mfussenegger/nvim-dap-python",
        "nvim-telescope/telescope-dap.nvim",
        { "jbyuki/one-small-step-for-vimkind", module = "osv" },
        --[[ { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
        {
          "microsoft/vscode-js-debug",
          opt = true,
          run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
        }, ]]
      },
      config = function()
        require("config.dap").setup()
      end,
      disable = false,
    }


end)
