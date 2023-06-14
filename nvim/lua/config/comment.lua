local status_ok, comment = pcall(require, "Comment")
if not status_ok then
	return
end

comment.setup({
    padding = true,
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
    }
})
