--[[
    Script Name    : SpawnScripts/Antonica/Blackbark.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.04 01:02:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, 629, 300)


end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end