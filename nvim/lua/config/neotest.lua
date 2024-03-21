local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
    return
end

-- adapters
local python = require "neotest-python"
local golang = require "neotest-go"

neotest.setup({
    adapters = {
        golang({
            args = { "-count=1", "-timehout=60s" }
        }),
        python({
            runner = "pytest",
            dap = {
                justMyCode = false,
                console = "integratedTerminal"
            }
        })
    },
    output = {
        enabled = true,
        open_on_run = false, -- until the quickfix issue is solved
        short = false,
        last_run = true,
        auto_close = true
    },
    output_panel = {
        enabled = true,
    },
    floating = {
        max_height = 0.6,
        max_width = 0.9
    },
    quickfix = {
        enabled = false,
        open = false
    },
})
