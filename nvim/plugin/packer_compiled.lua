-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/justquitstoptrying/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/justquitstoptrying/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/justquitstoptrying/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/justquitstoptrying/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/justquitstoptrying/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  Alduin = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/Alduin",
    url = "https://github.com/AlessandroYorba/Alduin"
  },
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  Zenburn = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/Zenburn",
    url = "https://github.com/jnurmine/Zenburn"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["anderson.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/anderson.vim",
    url = "https://github.com/tlhr/anderson.vim"
  },
  ["aquarium-vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/aquarium-vim",
    url = "https://github.com/frenzyexists/aquarium-vim"
  },
  aurora = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/aurora",
    url = "https://github.com/ray-x/aurora"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes",
    url = "https://github.com/rafi/awesome-vim-colorschemes"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/base16-vim",
    url = "https://github.com/chriskempson/base16-vim"
  },
  ["better-escape.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  darcula = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/darcula",
    url = "https://github.com/doums/darcula"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/doom-one.vim",
    url = "https://github.com/romgrk/doom-one.vim"
  },
  ["everblush.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/everblush.vim",
    url = "https://github.com/mangeshrex/everblush.vim"
  },
  everforest = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["git.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/git.nvim",
    url = "https://github.com/dinhhuy258/git.nvim"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kit.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/kit.vim",
    url = "https://github.com/tadachs/kit.vim"
  },
  ["link-visitor.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/link-visitor.nvim",
    url = "https://github.com/xiyaowong/link-visitor.nvim"
  },
  ["lsp-format.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  melange = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  molokai = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/molokai",
    url = "https://github.com/tomasr/molokai"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["moonlight.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  neon = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/neon",
    url = "https://github.com/rafamadriz/neon"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nest.nvim",
    url = "https://github.com/LionC/nest.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim",
    url = "https://github.com/christianchiarulli/nvcode-color-schemes.vim"
  },
  nvim = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cokeline"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-cokeline",
    url = "https://github.com/noib3/nvim-cokeline"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedarker.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/onedarker.nvim",
    url = "https://github.com/LunarVim/onedarker.nvim"
  },
  onehalf = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/onehalf",
    url = "https://github.com/sonph/onehalf"
  },
  ["onenord.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/onenord.nvim",
    url = "https://github.com/rmehri01/onenord.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  playground = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  rigel = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/rigel",
    url = "https://github.com/Rigellute/rigel"
  },
  ["shades-of-purple.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/shades-of-purple.vim",
    url = "https://github.com/Rigellute/shades-of-purple.vim"
  },
  ["solarized.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/solarized.nvim",
    url = "https://github.com/shaunsingh/solarized.nvim"
  },
  spaceduck = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/spaceduck",
    url = "https://github.com/pineapplegiant/spaceduck"
  },
  ["tabout.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["toast.vim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/toast.vim",
    url = "https://github.com/jsit/toast.vim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  vim = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-afterglow"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-afterglow",
    url = "https://github.com/danilo-augusto/vim-afterglow"
  },
  ["vim-atomic"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-atomic",
    url = "https://github.com/gerardbm/vim-atomic"
  },
  ["vim-colors-github"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-colors-github",
    url = "https://github.com/cormacrelf/vim-colors-github"
  },
  ["vim-colors-pencil"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-colors-pencil",
    url = "https://github.com/preservim/vim-colors-pencil"
  },
  ["vim-config"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-config",
    url = "https://github.com/m104/vim-config"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-quantum"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-quantum",
    url = "https://github.com/tyrannicaltoucan/vim-quantum"
  },
  ["vim-railscasts-theme"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vim-railscasts-theme",
    url = "https://github.com/jpo/vim-railscasts-theme"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "https://github.com/Mofiqul/vscode.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/justquitstoptrying/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
