--[[
    Script Name    : SpawnScripts/NorthQeynos/Hal.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.22 05:04:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "I'll be happy to supply all your fuel needs.", "", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end