local function insertFormula()
    local current_word = vim.fn.expand('<cword>') -- Get the word under the cursor
    local current_dir = vim.fn.expand('%:p:h') -- Get the current directory of the file being edited
    local csv_path = current_dir .. '/shortcut.csv'
    local file = io.open(csv_path, 'r')
    if file then
        for line in file:lines() do
            local k, formula = line:match('([^,]+),([^,]+)')
            if k and k == current_word then
                vim.fn.setreg('"', formula) -- Set the unnamed register with the formula
                vim.cmd('normal! ""p') -- Paste the unnamed register at the cursor position
                file:close()
                return
            end
        end
        -- print error message if no formula was found
        print('No formula found for keyword: ' .. current_word)
        file:close()
    end
end

return { insertFormula = insertFormula }

