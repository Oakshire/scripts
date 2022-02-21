--[[
    Script Name    : SpawnScripts/WillowWood/anoakmystgreatbear.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.21 05:02:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
   PlaySound(NPC, 17872, Spawn)
    PlayFlavor(NPC, "", "", "snd_bear_roar", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end