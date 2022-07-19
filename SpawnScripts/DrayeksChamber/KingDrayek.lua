--[[
    Script Name    : SpawnScripts/DrayeksChamber/KingDrayek.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:46
    Script Purpose : Governs behavior of King Drayek in Drayek's Chamber (non-quest)
                   : Drayek has two unique abilities: Strike of the Giant King and Giant's Kick. Giant's Kick is a huge knockback.
                   : Drayek begins the encounter by allowing the frozen sentinels and vigilants to attack first. He then sends his wolves after the players, and finally engages.
                   : At set intervals, he calls adds (his royal guards twice, and then his 'kings of old') and then the encounter ends.
--]]

frozenadds = {}
wolves = {}
guards = {}
kings = {}

function spawn(NPC)
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
SetTempVariable(NPC, "encounterstart", "0")
SetTempVariable(NPC, "addsphase", "0")
end

function InRange(NPC, Spawn)
    if GetTempVariable(NPC, "encounterstart") == "0" then
        Say(NPC, "I see my feeble guard has failed me. Perhaps they have underestimated the threat? I will not be making the same mistake.")
        SetTempVariable(NPC, "encounterstart", "1")
        AddTimer(NPC, 10000, "addsSpawn", 1, Spawn)
    end
end

function healthchanged(NPC, Spawn)
end

function addsSpawn(NPC, Spawn)
local zone = GetZone(NPC)
    if GetTempVariable(NPC, "addsphase") == "0" then
	    for k,v in pairs(frozenadds) do
	        local frozen = GetSpawnByLocationID(zone, v)
	        Attack(frozen, Spawn)
        end
        SetTempVariable(NPC, "addsphase", "1")
    elseif GetTempVariable(NPC, "addsphase") == "1" then
    local hated = GetMostHated(NPC)
        for k,v in pairs(wolves) do
            local wolf = GetSpawnByLocationID(zone, v)
            Attack(wolf, hated)
        end
    elseif GetTempVariable(NPC, "addsphase") == "2" then
    local hated = GetMostHated(NPC)
        for k,v in pairs(guards) do
            local guard = SpawnByLocationID(zone, v)
            Attack(guard, hated)
        end
    elseif GetTempVariable(NPC, "addsphase") == "3" then
    local hated = GetMostHated(NPC)
        for k,v in pairs(kings) do
            local king = SpawnByLocationID(zone, v)
            Attack(king, hated)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end