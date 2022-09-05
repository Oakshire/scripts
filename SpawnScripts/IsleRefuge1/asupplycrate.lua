--[[
    Script Name    : SpawnScripts/IsleRefuge1/asupplycrate.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.05 04:09:53
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