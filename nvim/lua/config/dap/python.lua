local M = {}

function M.setup()
  require("dap-python").setup("python", {
        test_runner = "pytest"
    })
end

return M
