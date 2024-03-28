local symbols = require('user.constants')

local function get_diagnostic_label(props)
    -- local icons = { error = '', warn = '', info = '', hint = '󰌵', }
    local icons = { error = symbols.Error, warn = symbols.Warn, info = symbols.Info, hint = symbols.Hint, }
    local label = {}

    for severity, icon in pairs(icons) do
        local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
        if n > 0 then
            table.insert(label, { icon .. ' ' .. n .. ' ', group = 'DiagnosticSign' .. severity })
        end
    end
    if #label > 0 then
        table.insert(label, { '| ' })
    end
    return label
end

local function get_git_diff(props)
    local icons = { removed = "", changed = "", added = "" }
    local labels = {}
    local signs = vim.api.nvim_buf_get_var(props.buf, "gitsigns_status_dict")
    for name, icon in pairs(icons) do
        if tonumber(signs[name]) and signs[name] > 0 then
            if name == "changed" then
                table.insert(labels, {
                    icon .. " " .. signs[name] .. " ",
                    group = "GitSignsChange"
                })
            end
            if name == "added" then
                table.insert(labels, {
                    icon .. " " .. signs[name] .. " ",
                    group = "GitSignsAdd"
                })
            end
            if name == "deleted" then
                table.insert(labels, {
                    icon .. " " .. signs[name] .. " ",
                    group = "GitSignsDelete"
                })
            end
        end
    end
    if #labels > 0 then
        table.insert(labels, { '| ' })
    end
    return labels
end

local onedark_colors = require('lualine.themes.onedark')
local guifg_focused = onedark_colors.insert.a.bg
local guifg_dimmed = onedark_colors.inactive.a.fg
local guifg_modified = onedark_colors.replace.a.bg

require('incline').setup({
    render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
        local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
        local function modFocus(both, val1, val2)
            if vim.api.nvim_buf_get_option(props.buf, "modified") and props.focused then
                return both
            elseif vim.api.nvim_buf_get_option(props.buf, "modified") then
                return val1
            elseif props.focused then
                return val2
            end
        end

        local buffer = {
            { get_diagnostic_label(props) },
            -- { get_git_diff(props) },
            { ft_icon,                    guifg = ft_color }, { " " },
            {
                filename,
                gui = modFocus('bold', 'italic', 'bold'),
                guifg = modFocus(guifg_modified, guifg_modified, guifg_focused)
            },
        }
        return buffer
    end,
    window = {
        margin = {
            vertical = 0,
            horizontal = 0
        },
        placement = {
            vertical = "bottom"
        }
    }
})
