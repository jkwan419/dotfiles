local jdtls = require("jdtls")
local mason_path = vim.fn.stdpath("data") .. "/mason"

-- Unique workspace per project (based on project root name)
local root_dir = vim.fs.dirname(
	vim.fs.find({ "gradlew", "mvnw", "pom.xml", "build.gradle", ".git" }, { upward = true })[1]
) or vim.fn.getcwd()

local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

local bundles = {
	vim.fn.glob(
		mason_path .. "/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
		true
	),
}

local config = {
	cmd = { mason_path .. "/bin/jdtls", "-data", workspace_dir },
	root_dir = root_dir,
	on_attach = function(_, _)
		require("jdtls").setup_dap({ hotcodereplace = "auto" })
		require("jdtls.dap").setup_dap_main_class_configs()
	end,
	settings = {
		java = {
			inlayHints = {
				parameterNames = { enabled = "all" },
			},
			signatureHelp = { enabled = true },
			contentProvider = { preferred = "fernflower" },
			completion = {
				favoriteStaticMembers = {
					"org.junit.Assert.*",
					"org.junit.Assume.*",
					"org.junit.jupiter.api.Assertions.*",
					"org.junit.jupiter.api.Assumptions.*",
					"org.junit.jupiter.api.DynamicContainer.*",
					"org.junit.jupiter.api.DynamicTest.*",
				},
			},
		},
	},
	init_options = {
		bundles = bundles,
	},
}

jdtls.start_or_attach(config)
