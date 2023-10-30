-- shoehorn twilight here for now since they would be used together
local status_ok, twilight = pcall(require, "twilight")
if not status_ok then
	return
end

twilight.setup {
  alpha = .75,
  context = 1,
  inactive = true,
}

