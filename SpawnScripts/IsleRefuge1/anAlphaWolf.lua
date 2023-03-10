--[[
    Script Name    : SpawnScripts/IsleRefuge1/anAlphaWolf.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.09 09:03:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end