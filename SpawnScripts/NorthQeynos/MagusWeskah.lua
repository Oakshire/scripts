--[[
    Script Name    : SpawnScripts/NorthQeynos/MagusWeskah.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.22 05:04:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "Do I need to call the guards?", "glare", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end