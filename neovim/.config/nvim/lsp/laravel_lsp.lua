return {
    cmd = { "laravel-lsp" },
    filetypes = { "php", "blade" },
    root_dir = function(bufnr, on_dir)
        local root = vim.fs.root(bufnr, "artisan")

        if root then
            on_dir(root)
        end
    end
}

