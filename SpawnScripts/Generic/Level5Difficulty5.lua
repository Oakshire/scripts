--[[
    Script Name    : SpawnScripts/Generic/Level5Difficulty5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.12 05:05:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "hp", 65)
    SpawnSet(NPC, "power", 40)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end