local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then return
end

local ok, navic = pcall(require, "nvim-navic")
if not ok then
	return
end

local nvimsurroundok, nvimsurround = pcall(require, "nvim-surround")
if not nvimsurroundok then
	return
end

local ook, fidget = pcall(require, "fidget")
if not ook then
	return
end

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

local function lsp_keymaps()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(0, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	vim.api.nvim_buf_set_keymap(0, "n", "L", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  vim.api.nvim_buf_set_keymap(0, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
  vim.api.nvim_buf_set_keymap(0, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end

--just copied from nvim doc lol
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
	vim.lsp.handlers.hover, {
		border = "rounded",
		focusable = true,
	}
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
	vim.lsp.handlers.signature_help, {
		border = "rounded",
	}
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
				signs = true,
				border = "rounded",
				underline = false,
			}
)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local lspStuff = {"pyright", "grammarly", "ember", "clangd", "vimls", "sumneko_lua", "html"}

for browhatt = 1, #lspStuff do
    local opts = { lsp_keymaps() }
    require('lspconfig')[lspStuff[browhatt]].setup{
		on_attach = function(client, bufnr)
			navic.attach(client, bufnr)
    end,
    opts,
		capabilities = capabilities,

    }
end

nvimsurround.setup{}

-- DISABLE floating_window IF YOU FIND IT A N N O Y I N G A  H  H  H   H    H 
require("lsp_signature").setup{
	floating_window = true,
	handler_opts = {
			border = "rounded",
	},
	hint_enable = false,
	toggle_key = "<C-k>",
}

fidget.setup {
    text = {
        spinner = "dots",
        done = "",
    },
    window = {
        blend = 0,
    },
}

vim.diagnostic.config {
	virtual_text = false
}
-- creates round border for floating windows found from nvim github
local border = {
      {"╭", "LspFloatWinBorder"},
      {"─", "LspFloatWinBorder"},
      {"╮", "LspFloatWinBorder"},
      {"│", "LspFloatWinBorder"},
      {"╯", "LspFloatWinBorder"},
      {"─", "LspFloatWinBorder"},
      {"╰", "LspFloatWinBorder"},
      {"│", "LspFloatWinBorder"},
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
print()
