--[[
    Script Name    : SpawnScripts/SummonersTest/TrialofEarth.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 04:11:11
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

dofile("SpawnScripts/SummonersTest/dpoinvisiblecube.lua")

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
end


function respawn(NPC)
	spawn(NPC)
end

function death (NPC,Spawn)
    local zone = GetZone(Spawn)
    local Ring = GetSpawnByLocationID(zone,133780576)
    if Ring ~= nil then
        Trial1Done(Ring,Spawn)
end  
end

function Stage2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 165)
end

function Trial2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780603) == nil then
    local TestofWater = SpawnByLocationID(zone,133780603)
    end
end