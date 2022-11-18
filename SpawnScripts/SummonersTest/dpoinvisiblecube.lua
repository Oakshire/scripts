--[[
    Script Name    : SpawnScripts/SummonersTest/dpoinvisiblecube.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.12 04:11:00
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Begin the test' then
    AddTimer(NPC,2500,"Spawn1",1,Spawn)
    CastSpell(Spawn,280024)
end
end

function Spawn1(NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780602) == nil then
    local TestofEarth = SpawnByLocationID(zone,133780602)
    end
    SpawnSet(NPC, "show_command_icon", 0)
    SpawnSet(NPC, "display_hand_icon", 0)
    end

function respawn(NPC)
	spawn(NPC)
end


function Trial1Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage2",1,Spawn)   
 AddTimer(NPC,4500,"Trial2",1,Spawn)  
end

function Trial2Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage3",1,Spawn)   
 AddTimer(NPC,4500,"Trial3",1,Spawn)   
end

function Trial3Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage4",1,Spawn)   
 AddTimer(NPC,4500,"Trial4",1,Spawn)  
end

function Stage2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 124)
    local Pet = GetSpawn(Spawn,8350001)
    if Pet == nil or not IsAlive(Pet) then
    CastSpell(Spawn,280024)
    end
end

function Trial2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780603) == nil then
    local TestofWater = SpawnByLocationID(zone,133780603)
    end
end


function Stage3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 571)
    local Pet = GetSpawn(Spawn,8350001)
    if Pet == nil or not IsAlive(Pet) then
    CastSpell(Spawn,280024)
    end
end

function Trial3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local Pet = GetSpawn(Spawn,8350001)
    if GetSpawnByLocationID(zone,133780601) == nil then
    local TestofAir = SpawnByLocationID(zone,133780601)
    end
end


function Stage4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780576)
    ApplySpellVisual(SummonRing, 165)
    local Pet = GetSpawn(Spawn,8350001)
    if Pet == nil or not IsAlive(Pet) then
    CastSpell(Spawn,280024)
    end
end

function Trial4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780604) == nil then
    local TestofWater = SpawnByLocationID(zone,133780604)
    end
end



function Trial4Done(NPC,Spawn)
    AddTimer(NPC,2500,"Ring",1,Spawn)   
    AddTimer(NPC,4500,"Light2",1,Spawn)   
    AddTimer(NPC,6500,"Light1",1,Spawn)   
    if Pet ~= nil or  IsAlive(Pet) then
    Despawn(Pet)
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
    SpawnSet(SummonRing,"model_type",0)
    local Ringlight = GetSpawnByLocationID(zone,133780625)
    Despawn(Ringlight)

end

