return {
    cmd = { "vscode-json-language-server", "--stdio" },
    filetypes = { "json" },
    settings = {
        json = {
        schemas = require("schemastore").json.schemas({
            select = {
            "Renovate",
            "GitHub Workflow Template Properties",
            },
        }),
        validate = { enable = true },
        },
    },
    init_options = {
        provideFormatter = true,
    },
}