--[[
    Script Name    : SpawnScripts/Blackburrow/arazorgill.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.15 05:07:30
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