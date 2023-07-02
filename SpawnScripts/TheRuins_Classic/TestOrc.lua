--[[
    Script Name    : SpawnScripts/TheRuins_Classic/TestOrc.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.02 03:07:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SpawnSet(NPC, "visual_state", "threaten")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end