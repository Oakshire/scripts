--[[
    Script Name    : SpawnScripts/DrayeksChamber/KingDrayek.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:46
    Script Purpose : Governs behavior of King Drayek in Drayek's Chamber (non-quest)
                   : Drayek has two unique abilities: Strike of the Giant King and Giant's Kick. Giant's Kick is a huge knockback.
                   : Drayek begins the encounter by allowing the frozen sentinels and vigilants to attack first. He then sends his wolves after the players, and finally engages.
                   : At set intervals, he calls adds (his royal guards twice, and then his 'kings of old') and then the encounter ends.
--]]

frozenadds = {351396, 351398, 351399, 351401, 351404, 351405}
wolves = {351408, 351406}
guards = {133774010, 133774011, 133774013, 133774014, 133774015, 133774016}
kings = {351427, 351428, 351429, 351430}

function spawn(NPC) -- Set an inRange function to start the encounter, set the line Drayek says to trigger based on a TempVar. Adds are spawned based on their TempVar value.
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
SetTempVariable(NPC, "encounterstart", "0")
SetTempVariable(NPC, "addsphase", "0")
end

function InRange(NPC, Spawn) -- Checks the variable set in the previous function, says a line, then sets it to something so it only triggers once. This is expensive from a resource standpoint and should be corrected.
    if GetTempVariable(NPC, "encounterstart") == "0" then
        Say(NPC, "I see my feeble guard has failed me. Perhaps they have underestimated the threat? I will not be making the same mistake.")
        SetTempVariable(NPC, "encounterstart", "1")
        AddTimer(NPC, 10000, "addsSpawn", 1, Spawn)
    end
end

function healthchanged(NPC, Spawn) -- Define variables to improve code readability. If the function sees a specific health value, then we set the TempVar according to what we're trying to spawn, then add a timer.
local eighty = GetMaxHP(NPC) * 0.8
local fifty = GetMaxHP(NPC) * 0.5
local twenty = GetMaxHP(NPC) * 0.2
local current = GetHP(NPC)
    if current < twenty then
        SetTempVariable(NPC, "addsphase", "3")
        AddTimer(NPC, 3000, "addsSpawn")
    elseif current < fifty then
        SetTempVariable(NPC, "addsphase", "2")
        AddTimer(NPC, 3000, "addsSpawn")
    elseif current < eighty then
        SetTempVariable(NPC, "addsphase", "2")
        AddTimer(NPC, 3000, "addsSpawn")
    end
end

function wolfDeath(NPC, Spawn)
    Say(NPC, "Some line about dealing with the matter personally idk")
    SpawnSet(NPC, "attackable", "1")
    Attack(NPC, Spawn)
end

function addsSpawn(NPC, Spawn) -- Various parts of this script (especially healthchanged) set the addsphase TempVar to a specific value. The addsphase value spawns and/or sets specific mobs to attackable. The wolves & frozen mobs are already spawned.
local zone = GetZone(NPC)
    if GetTempVariable(NPC, "addsphase") == "0" then
        Say(NPC, "Allowing frozen sentinels to attack. Set attackable and attack person who started encounter.")
	    for k,v in pairs(frozenadds) do
	        local frozen = GetSpawnByLocationID(zone, v)
	        SpawnSet(frozen, "attackable", "1")
	        Attack(frozen, Spawn)
        end
    elseif GetTempVariable(NPC, "addsphase") == "1" then
    local hated = GetMostHated(NPC)
        Say(NPC, "Allowing wolves to attack. Spawn var sent from death script on frozen mobs. Set attackable and attack last person who killed a frozen mob.")
        for k,v in pairs(wolves) do
            local wolf = GetSpawnByLocationID(zone, v)
            SpawnSet(wolf, "attackable", "1")
            Attack(wolf, Spawn)
        end
    elseif GetTempVariable(NPC, "addsphase") == "2" then
    local hated = GetMostHated(NPC)
        Say(NPC, "Summoning guards. This should happen twice. Spawn and attack highest person on hate list.")
        for k,v in pairs(guards) do
            local guard = SpawnByLocationID(zone, v)
            Attack(guard, hated)
        end
    elseif GetTempVariable(NPC, "addsphase") == "3" then
    local hated = GetMostHated(NPC)
        Say(NPC, "Summoning 'kings of old.' Spawn and attack highest person on hate list.")
        for k,v in pairs(kings) do
            local king = SpawnByLocationID(zone, v)
            Attack(king, hated)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end