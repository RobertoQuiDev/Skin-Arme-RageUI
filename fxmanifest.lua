fx_version 'adamant'

game 'gta5'

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
----------------------------		  		                                    ---------------------------
----------------------------	          développer par Roberto                ---------------------------
----------------------------		                                            ---------------------------
-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

description 'Skin Arme RageUI'

version '1.0.0'
author 'Roberto'

------------ RAGEUI ------------


client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",

    "src/components/*.lua",

    "src/menu/elements/*.lua",

    "src/menu/items/*.lua",

    "src/menu/panels/*.lua",

    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",

}

------------ Menu ------------
client_scripts {
	'client.lua',
    'config.lua'
}

dependencies {
	'es_extended'
}
