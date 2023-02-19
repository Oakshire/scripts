--[[
    Script Name    : SpawnScripts/SummonerPets/TellurianScarab.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.18 11:02:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    
end

function attacked(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 9)
    SetInfoStructSInt(Spawn, "power_regen", 12)
    
end


function CombatReset(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 37)
    SetInfoStructSInt(Spawn, "power_regen", 22)
end


function respawn(NPC)
	spawn(NPC)
end