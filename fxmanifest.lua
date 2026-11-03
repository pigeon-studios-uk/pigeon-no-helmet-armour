fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-helmet-armour'
author 'Pigeon Studios'
description 'Removes the hidden headshot protection GTA gives helmets, so a helmet is only a look.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-helmet-armour'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-helmet-armour'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
