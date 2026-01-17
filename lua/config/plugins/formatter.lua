return {
                        "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup {
            filetype = {
                go = {
                    function()
                        return {
                            exe = "goimports",
                            args = {"-w", vim.api.nvim_buf_get_name(0)},
                            stdin = false,
                        }
                    end
                },
                rust = {
                    function()
                        return {
                            exe = "rustfmt",
                            args = {vim.api.nvim_buf_get_name(0)},
                            stdin = false
                        }
                     end
                },
                json = {
                    function()
                        return {
                            exe = "prettier",
                            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                yaml = {
                    function()
                        return {
                            exe = "prettier",
                            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                xml = {
                    function()
                        return {
                            exe = "xmlformat",
                            args = { vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                markdown = {
                    function()
                        return {
                            exe = "prettier",
                            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                html = {
                    function()
                        return {
                            exe = "prettier",
                            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                css = {
                    function()
                        return {
                            exe = "prettier",
                            args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                            stdin = true,
                        }
                    end
                },
                python = {
                    function()
                        return {
                            exe = "blue",
                            args = { vim.api.nvim_buf_get_name(0) },
                            stdin = false,
                        }
                    end
                },
            }
        }
    end
}
