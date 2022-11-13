--[[
    Script Name    : SpawnScripts/SummonersTest/TrialofAir.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 04:11:34
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
        Trial3Done(Ring,Spawn)
end  
end  

function Stage4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 165)
end

function Trial4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780604) == nil then
    local TestofWater = SpawnByLocationID(zone,133780604)
    end
end