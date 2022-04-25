--[[
    Script Name    : SpawnScripts/NorthQeynos/FharaHanford.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.24 02:04:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Good day! Please take a look around my shop. My fine furniture spruces up any home. ", "hello", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end