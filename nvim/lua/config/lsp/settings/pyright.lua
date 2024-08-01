-- env code adapted from
-- https://github.com/younger-1/nvim/blob/one/lua/young/lang/python.lua


local function get_poetry_dir()
    return vim.fn.trim(vim.fn.system 'poetry env info -p')
end

local function get_python_dir(workspace)
    local poetry_match = vim.fn.glob(path.join(workspace, 'poetry.lock'))
    if poetry_match ~= '' then
        return get_poetry_dir()
    end

    -- Find and use virtualenv in workspace directory.
    for _, pattern in ipairs { '*', '.*' } do
        local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))
        if match ~= '' then
            return path.dirname(match)
        end
    end

    return ''
end

return {
    settings = {
        venvPath = ".",
        venv = get_python_dir("."),
        python = {
            analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "basic",
                useLibraryCodeforTypes = true,
            },
        },
    },
}
