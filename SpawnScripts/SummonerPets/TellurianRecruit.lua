--[[
    Script Name    : SpawnScripts/SummonerPets/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.18 11:02:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function attacked(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 13)
    SetInfoStructSInt(Spawn, "power_regen", 17)
    
end


function CombatReset(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 71)
    SetInfoStructSInt(Spawn, "power_regen", 54)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end