--[[
    Script Name    : SpawnScripts/CoveofDecay/acatch.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.02 02:03:42
    Script Purpose : 
                   : 
--]]

catchIDs = {347235, 347236, 347237, 347238, 347239, 347240, 347241, 347242, 347423, 347424, 347425, 347426} -- location IDs of "a catch". Rognog attacks when these are all dead.

function spawn(NPC)
end

function death(NPC, Spawn)
    local zone = GetZone(NPC)
    local rognogx2 = GetSpawn(NPC, 3110002)
    AddTimer(NPC, 1000, "rognogStart", 1, Spawn)
end

function rognogStart(NPC, Spawn)
    local zone = GetZone(NPC)
    for k,v in ipairs(catchIDs) do
        local fish = GetSpawnByLocationID(zone, v)
        if isAlive(fish) == true then
            break
        else 
            -- set rognog as attackable, command rognog to attack, command crabs to attack. should only do this once, so to protect will have to add a tempvariable here.
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end