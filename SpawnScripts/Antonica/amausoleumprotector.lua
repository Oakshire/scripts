--[[
    Script Name    : SpawnScripts/Antonica/amausoleumprotector.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.01 11:04:27
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