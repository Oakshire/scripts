--[[
    Script Name    : SpawnScripts/BuccaneersHideout/ArthegosAlethros.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 05:12:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
		PlayFlavor(NPC, "", "Come h'er! Let's test and see how sharp my sword is!", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end