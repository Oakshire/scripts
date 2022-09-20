--[[
    Script Name    : SpawnScripts/GrimgashsLair/aGruttoothwitchdoctor.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.20 02:09:26
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