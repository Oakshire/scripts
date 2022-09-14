--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotector.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 08:09:15
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