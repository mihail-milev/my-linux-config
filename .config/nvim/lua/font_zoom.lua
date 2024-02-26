font_size = 11
function AdjustFontSize(sz)
    font_size = font_size + sz
    vim.cmd("GuiFont! Monospace:h" .. font_size)
end

function SetDefaultFontSize()
    font_size = 11
    vim.cmd("GuiFont! Monospace:h" .. font_size)
end
