--[[
    Script Name    : SpawnScripts/WailingCaves/aguardianstatue1.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 05:07:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end