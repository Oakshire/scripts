--[[
    Script Name    : SpawnScripts/SummonerPets/TellurianCrawler.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.18 11:02:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function attacked(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 9)
    SetInfoStructSInt(Spawn, "power_regen", 12)
    
end


function CombatReset(NPC)
    SetInfoStructSInt(Spawn, "hp_regen", 39)
    SetInfoStructSInt(Spawn, "power_regen", 27)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end