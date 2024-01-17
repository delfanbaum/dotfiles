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
        extra = false,
    }
})

local status_ok_ft, comment_ft = pcall(require, "Comment.ft")
if not status_ok_ft then
	return
end

comment_ft.set('asciidoc', '// %s')
