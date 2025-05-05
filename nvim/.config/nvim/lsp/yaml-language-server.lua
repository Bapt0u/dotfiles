return {
    cmd = { "yaml-language-server", "--stdio" },
    filetypes = {"yaml", "yml"},
	settings = {
		yaml = {
			schemaStore = {
				url = "https://www.schemastore.org/api/json/catalog.json",
				enable = true,
			},
		},
	},
}