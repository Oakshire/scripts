--[[
    Script Name    : SpawnScripts/SummonersTest/TrialofWater.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 04:11:44
    Script Purpose : 
                   : 
--]]
dofile ("SpawnScripts/Generic/MonsterCallouts/BaseWaterElemental1.lua")
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
        Trial2Done(Ring,Spawn)
end  
end 

function Stage3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 165)
end

function Trial3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780601) == nil then
    local TestofWater = SpawnByLocationID(zone,133780601)
    end
end