--[[
    Script Name    : SpawnScripts/classic_caves/apaleadder.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.02 04:09:35
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