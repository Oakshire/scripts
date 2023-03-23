--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothneophyteStatic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.23 03:03:37
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