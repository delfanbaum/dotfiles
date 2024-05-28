local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
    return
end

gitsigns.setup({
    -- Note for later: apparently this does a lot more that I should
    -- investigate.
    attach_to_untracked = true,
    max_file_length = 10000
})
