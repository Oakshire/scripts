--[[
    Script Name    : SpawnScripts/IsleRefuge1/awarwolfB.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.26 02:09:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructUInt(NPC, "hp_regen_override", 1)
    SetInfoStructSInt(NPC, "hp_regen", 0)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end