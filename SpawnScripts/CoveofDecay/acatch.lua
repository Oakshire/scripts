--[[
    Script Name    : SpawnScripts/CoveofDecay/acatch.lua
    Script Author  : Neveruary
    Script Date    : 2022.03.02 02:03:42
    Script Purpose : 
                   : 
--]]

crabIDs = {347223, 347225, 347228, 347231}

function spawn(NPC)
end

function death(NPC, Spawn)
    AddTimer(NPC, 250, "fishCheck1", 1, Spawn) -- Send Spawn to next function
end

function fishCheck1(NPC, Spawn) -- this sucks. someone please help me fix it.
local zone = GetZone(NPC)
local fish1 = GetSpawnByLocationID(zone, 347235)
local fish2 = GetSpawnByLocationID(zone, 347237)
local fish3 = GetSpawnByLocationID(zone, 347238)
    if IsAlive(fish1) == true then
    elseif IsAlive(fish2) == true then
    elseif IsAlive(fish3) == true then
    else
        SetTempVariable(NPC, "fishcheck1", "1")
        AddTimer(NPC, 250, "fishCheck2", 1, Spawn)
    end
end

function fishCheck2(NPC, Spawn)
local zone = GetZone(NPC)
local fish1 = GetSpawnByLocationID(zone, 347242)
local fish2 = GetSpawnByLocationID(zone, 347243)
local fish3 = GetSpawnByLocationID(zone, 347239)
local fish4 = GetSpawnByLocationID(zone, 347240)
    if IsAlive(fish1) == true then
    elseif IsAlive(fish2) == true then
    elseif IsAlive(fish3) == true then
    elseif IsAlive(fish4) == true then
    else
        SetTempVariable(NPC, "fishcheck2", "1")
        AddTimer(NPC, 250, "fishCheck3", 1, Spawn)
    end
end

function fishCheck3(NPC, Spawn)
local zone = GetZone(NPC)
local fish1 = GetSpawnByLocationID(zone, 347245)
local fish2 = GetSpawnByLocationID(zone, 347246)
    if IsAlive(fish1) == true then
    elseif IsAlive(fish2) == true then
    else
        SetTempVariable(NPC, "fishcheck3", "1")
        AddTimer(NPC, 250, "rognogCheck", 1, Spawn)
    end
end

function rognogCheck(NPC, Spawn)
    if GetTempVariable(NPC, "fishcheck1") == nil then
    elseif GetTempVariable(NPC, "fishcheck2") == nil then
    elseif GetTempVariable(NPC, "fishcheck3") == nil then
    else
        AddTimer(NPC, 250, "rognogStart", 1, Spawn)
    end
end

function rognogStart(NPC, Spawn)
local zone = GetZone(NPC)
local rognogx2 = GetSpawn(NPC, 3110002)
    SpawnSet(rognogx2, "attackable", "1")
    Attack(rognogx2, Spawn)
    for k,v in pairs(crabIDs) do
        local crab = GetSpawnByLocationID(zone, v)
        SpawnSet(crab, "attackable", "1")
        Attack(crab, Spawn)
    end
end

function respawn(NPC)
	spawn(NPC)
end