## Aleck's Configs
Each folder has an `install.sh` that should be run from that dir. i.e. `./install.sh` or `bash ./install.sh`

I used `ln` over `cp` so that changes to the configs from on other systems would auto-update with a pull.


### vim addons
`brew install vim --with-lua`
open a new shell

follow the new instructions here: https://github.com/spf13/spf13-vim


For fish copy `fish_prompt.fish` to `~/.conif/fish/functions/`  
To set fish as the default shell in ubuntu: `sudo chsh $USER -s $(which fish);`
