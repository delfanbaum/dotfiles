-- :ToggleSoftWrap — buffer-local switch between hard-wrap and soft-wrap
-- (visual line movement). Only for markdown, asciidoc, and text files.

local allowed = { markdown = true, asciidoc = true, asciidoctor = true, text = true }

local maps = {
  { { "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'" },
  { { "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'" },
  { "n", "0", "g0" },
  { "n", "$", "g$" },
  { "n", "<Down>", "gj" },
  { "n", "<Up>", "gk" },
}

local function enable(buf)
  vim.opt_local.formatoptions:remove({ "t", "c" })
  vim.opt_local.wrap = true
  vim.opt_local.linebreak = true
  for _, m in ipairs(maps) do
    vim.keymap.set(m[1], m[2], m[3], { buffer = buf, expr = m[3]:find("count") ~= nil })
  end
  vim.b[buf].soft_wrap = true
end

local function disable(buf)
  vim.opt_local.formatoptions:append({ "t", "c" })
  vim.opt_local.linebreak = false
  for _, m in ipairs(maps) do
    pcall(vim.keymap.del, m[1], m[2], { buffer = buf })
  end
  vim.b[buf].soft_wrap = false
end

vim.api.nvim_create_user_command("ToggleSoftWrap", function()
  local buf = vim.api.nvim_get_current_buf()
  if not allowed[vim.bo[buf].filetype] then
    vim.notify("ToggleSoftWrap only applies to markdown, asciidoc, and text files", vim.log.levels.WARN)
    return
  end
  if vim.b[buf].soft_wrap then
    disable(buf)
    vim.notify("Soft wrap off (hard-wrap at textwidth)")
  else
    enable(buf)
    vim.notify("Soft wrap on (visual line movement)")
  end
end, { desc = "Toggle soft-wrap / visual line movement (markdown, asciidoc, text)" })
