local collectionMapper = {
    ['mf'] = 'MutualFund',
    ['si'] = 'Sirpi',
    ['bo'] = 'BoSparc'
}
function OpenAPICollection()
    local collection = vim.ui.input({
      prompt = "Enter your collection:",
    }, function(input)
        local val = collectionMapper[input]
        vim.cmd("CurlOpen collection global " .. val)
    end)
end

return {}
