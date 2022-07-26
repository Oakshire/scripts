--[[
    Script Name    : SpawnScripts/DrayeksChamber/KingDrayek.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.17 09:07:46
    Script Purpose : Governs behavior of King Drayek in Drayek's Chamber (non-quest)
                   : Drayek has two unique abilities: Strike of the Giant King and Giant's Kick. Giant's Kick is a huge knockback.
                   : Drayek begins the encounter by allowing the frozen sentinels and vigilants to attack first. He then sends his wolves after the players, and finally engages.
                   : At set intervals, he calls adds (his royal guards twice, and then his 'kings of old') and then the encounter ends.
                   : Spell collects are pending.
--]]               
frozenadds = {351396, 351398, 351399, 351401, 351404, 351405}
wolves = {351408, 351406}
guards = {133774010, 133774011, 133774013, 133774014, 133774015, 133774016}
kings = {351427, 351428, 351429, 351430}

function spawn(NPC) -- Define variables
SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
SetTempVariable(NPC, "encounterstart", "0")
SetTempVariable(NPC, "addsphase", "0")
SetTempVariable(NPC, "encounterphase", "0")
end

function InRange(NPC, Spawn) -- Starts encounter
    if GetTempVariable(NPC, "encounterstart") == "0" then
        Say(NPC, "I see my feeble guard has failed me. Perhaps they have underestimated the threat? I will not be making the same mistake.")
        SetTempVariable(NPC, "encounterstart", "1")
        AddTimer(NPC, 10000, "addsSpawn", 1, Spawn)
    end
end

function healthchanged(NPC, Spawn) -- At a specific health value, spawn a specific group of mobs.
local eighty = GetMaxHP(NPC) * 0.8
local fifty = GetMaxHP(NPC) * 0.5
local twenty = GetMaxHP(NPC) * 0.2
local current = GetHP(NPC)
    if current < twenty and GetTempVariable(NPC, "encounterphase") == "3" then
        SetTempVariable(NPC, "addsphase", "3")
        SetTempVariable(NPC, "encounterphase", "4")
        AddTimer(NPC, 3000, "addsSpawn")
    elseif current < fifty and GetTempVariable(NPC, "encounterphase") == "2" then
        SetTempVariable(NPC, "addsphase", "2")
        SetTempVariable(NPC, "encounterphase", "3")
        AddTimer(NPC, 3000, "addsSpawn")
    elseif current < eighty and GetTempVariable(NPC, "encounterphase") == "0" then
        SetTempVariable(NPC, "addsphase", "2")
        SetTempVariable(NPC, "encounterphase", "2")
        AddTimer(NPC, 3000, "addsSpawn")
    end
end

function wolfDeath(NPC, Spawn) -- Attack after wolves are dead
    Say(NPC, "Prepare yourselves! Now, I must deal with you... personally.")
    SpawnSet(NPC, "attackable", "1")
    Attack(NPC, Spawn)
end

function addsSpawn(NPC, Spawn) -- Change add phases below to spawn different mobs
local zone = GetZone(NPC)
    if GetTempVariable(NPC, "addsphase") == "0" then
	    for k,v in pairs(frozenadds) do
	        local frozen = GetSpawnByLocationID(zone, v)
	        SpawnSet(frozen, "attackable", "1")
	        Attack(frozen, Spawn)
        end
    elseif GetTempVariable(NPC, "addsphase") == "1" then
    local hated = GetMostHated(NPC)
        Say(NPC, "Enough of this! You can have them now my pets!")
        for k,v in pairs(wolves) do
            local wolf = GetSpawnByLocationID(zone, v)
            SpawnSet(wolf, "attackable", "1")
            Attack(wolf, Spawn)
        end
    elseif GetTempVariable(NPC, "addsphase") == "2" then
    local hated = GetMostHated(NPC)
        if GetTempVariable(NPC, "encounterphase") == "0" then
            Say(NPC, "Such insolence! Guards, to me!")
        elseif GetTempVariable(NPC, "encounterphase") == "2" then
            Say(NPC, "As much fun as this was, I grow tired of you all... Guards!!!")
        end
        for k,v in pairs(guards) do
            local guard = SpawnByLocationID(zone, v)
            Attack(guard, hated)
        end
    elseif GetTempVariable(NPC, "addsphase") == "3" then
    local hated = GetMostHated(NPC)
        Say(NPC, "Kings of old, I call to you now! Aid your King!!!!")
        for k,v in pairs(kings) do
            local king = SpawnByLocationID(zone, v)
            Attack(king, hated)
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end