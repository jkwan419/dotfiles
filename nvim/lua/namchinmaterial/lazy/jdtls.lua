return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	config = function()
		local bundles = {
			vim.fn.glob(
				vim.fn.stdpath("data")
					.. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
				true
			),
		}

		require("jdtls").start_or_attach({
			cmd = { "jdtls" },
			root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "build.gradle", ".git" }, { upward = true })[1]),
			init_options = {
				bundles = bundles,
			},
			on_attach = function(_, _)
				require("jdtls").setup_dap({ hotcodereplace = "auto" })
				require("jdtls.dap").setup_dap_main_class_configs()
			end,
		})
	end,
}
