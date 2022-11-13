--[[
    Script Name    : SpawnScripts/SummonersTest/TrialofFire.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 04:11:14
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseFireElemental1.lua")

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
        Trial4Done(Ring,Spawn)
end  
if GetQuestStep(Spawn,5770)==1 then
    SetStepComplete(Spawn,5770,1)
end
end

function Light1(NPC, Spawn)
    local zone = GetZone(Spawn)
    local candle1 = GetSpawnByLocationID(zone,133780562)
    local candle2 = GetSpawnByLocationID(zone,133780563)
    local candle3 = GetSpawnByLocationID(zone,133780564)
    local candle4 = GetSpawnByLocationID(zone,133780565)
    local candle5 = GetSpawnByLocationID(zone,133780566)
    local candle6 = GetSpawnByLocationID(zone,133780568)
    local candle7 = GetSpawnByLocationID(zone,133780569)
    SpawnSet(candle1,"model_type",5963)
    SpawnSet(candle2,"model_type",5963)
    SpawnSet(candle3,"model_type",5963)
    SpawnSet(candle4,"model_type",5963)
    SpawnSet(candle5,"model_type",5963)
    SpawnSet(candle6,"model_type",5963)
    SpawnSet(candle7,"model_type",5963)
end

function Light2(NPC, Spawn)
    local zone = GetZone(Spawn)
    local candle8 = GetSpawnByLocationID(zone,133780570)
    local candle9 = GetSpawnByLocationID(zone,133780571)
    local candle10 = GetSpawnByLocationID(zone,133780572)
    local candle11 = GetSpawnByLocationID(zone,133780573)
    local candle12 = GetSpawnByLocationID(zone,133780574)
    local candle13 = GetSpawnByLocationID(zone,133780575)
    local candle14 = GetSpawnByLocationID(zone,133780567)
    SpawnSet(candle8,"model_type",5963)
    SpawnSet(candle9,"model_type",5963)
    SpawnSet(candle10,"model_type",5963)
    SpawnSet(candle11,"model_type",5963)
    SpawnSet(candle12,"model_type",5963)
    SpawnSet(candle13,"model_type",5963)
    SpawnSet(candle14,"model_type",5963)
end

function Ring(NPC, Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    SpawnSet(SummonRing,"visual_state",34342)

end