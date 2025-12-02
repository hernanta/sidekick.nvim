---@type sidekick.cli.Config
return {
  cmd = { "dekacode" }, 
  is_proc = "\\<dekacode\\>",
  url = "https://github.com/raihan0824/dekacode",
  mux_focus = true, 
  format = function(text)
    require("sidekick.text").transform(text, function(str)
      return str:gsub("([^%w/_%.%-])", "\\%1")
    end, "SidekickLocFile")
  end,
}