-- Create a table to store the cached formulas
local formula_cache = {}

local function insertFormula()
    local current_word = vim.fn.expand('<cword>') -- Get the word under the cursor

    -- Check if the formula is already cached
    if formula_cache[current_word] then
        local current_line = vim.fn.line('.') -- Get the current line number
        local current_col = vim.fn.col('.') -- Get the current column number

        -- Replace the word under the cursor with the cached formula
        local formula = formula_cache[current_word]
        vim.fn.setline(current_line, string.gsub(vim.fn.getline(current_line), current_word, formula))

        return
    end

    local current_dir = vim.fn.expand('%:p:h') -- Get the current directory of the file being edited
    local csv_path = current_dir .. '/shortcut.csv'
    local file = io.open(csv_path, 'r')
    if file then
        for line in file:lines() do
            local k, formula = line:match('([^,]+),([^,]+)')
            if k and k == current_word then
                formula_cache[current_word] = formula -- Cache the formula

                local current_line = vim.fn.line('.') -- Get the current line number
                local current_col = vim.fn.col('.') -- Get the current column number

                -- Replace the word under the cursor with the new formula
                vim.fn.setline(".", formula)

                file:close()
                return
            end
        end
        file:close()
    end
end

return { insertFormula = insertFormula }

