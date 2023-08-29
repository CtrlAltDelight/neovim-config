# neovim-config

A place to store my neovim configs.

## Installation
    # Remove your existing config (CAUTION: Make sure you want to do this or create a backup first)
    rm -rf ~/.config/nvim

    # Clone the repository
    git clone https://github.com/CtrlAltDelight/nvim.git ~/.config

Your done! 

You can tell if it installed correctly if it says "Hello from CtrlAltDelight" in the bottom left when NeoVim starts.

Everything should install itself automatically the next time you start NeoVim.

The only thing you may need to configure is coc.nvim's extensions. Use the command `:CocInstall` to install any wanted LSP servers.

I hope this serves you as a good config or at least gets you started on creating your own config.

# How it works

**/after** - Stores all configs for individual plugins. Just name a file in the /after/plugins/<plugin_name>.lua and put any lua script you want to run after that plugin loads there.

**/lua** - Any lua scripts you want to require should be placed here. You can place as many folders as you want here. Just make sure each folder has an init.lua. init.lua is the file that will be run when you require the directory name in your root directory's init.lua.

**/init.lua** - This is the file that is initially run when nvim opens. Make sure you require any directories in your **/lua** folder you want to have run their separate init.lua file.

**/coc-settings.json** - Place any settings for the coc.nvim extension in this json file. coc.nvim is one of the more involved plugins in this setup. You should check out the github page for it if you want more information.

