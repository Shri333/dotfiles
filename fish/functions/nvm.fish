# adapted from "https://medium.com/@joshuacrass/nvm-on-mac-for-fish-users-e00af124c540"
function nvm
    bass source (brew --prefix)/opt/nvm/nvm.sh --no-use ';' nvm $argv
end
