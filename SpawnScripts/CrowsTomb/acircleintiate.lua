--[[
    Script Name    : SpawnScripts/CrowsTomb/acircleintiate.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 08:10:49
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

