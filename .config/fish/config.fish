# Load all settings from settings/ directory
for config_file in ~/.config/fish/settings/*.fish
    if test -f $config_file
        source $config_file
    end
end
