--[[
    Script Name    : SpawnScripts/SorcerersTrial/dpoinvisiblecube.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.13 04:11:11
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function respawn(NPC)
	spawn(NPC)
end


function Trial1Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage2",1,Spawn)   
 AddTimer(NPC,3500,"Trial2",1,Spawn)  
end

function Trial2Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage3",1,Spawn)   
 AddTimer(NPC,3500,"Trial3",1,Spawn)   
end

function Trial3Done(NPC,Spawn)
 AddTimer(NPC,2500,"Stage4",1,Spawn)   
 AddTimer(NPC,3500,"Trial4",1,Spawn)  
end

function Stage2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780600)
    ApplySpellVisual(SummonRing, 100)
end

function Trial2 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780603) == nil then
    local Trial2Spawn = SpawnByLocationID(zone,133780628)
    end
end


function Stage3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780600)
    ApplySpellVisual(SummonRing, 100)

end

function Trial3 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780601) == nil then
    local Trial3Spawn = SpawnByLocationID(zone,133780629)
    end
end


function Stage4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780600)
    ApplySpellVisual(SummonRing, 100)

end

function Trial4 (NPC,Spawn)
    local zone = GetZone(Spawn)
    if GetSpawnByLocationID(zone,133780604) == nil then
    local Trial4Spawn = SpawnByLocationID(zone,133780630)
    end
end



function Trial4Done(NPC,Spawn)
    AddTimer(NPC,2500,"RingDone",1,Spawn)  
    if GetQuestStep(Spawn,5769)==1 then
    SetStepComplete(Spawn,5769,1)
end
 end  


function RingDone(NPC, Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780600)
    SpawnSet(SummonRing,"visual_state",34341)
    AddTimer(NPC,3000,"DespawnRing")    
end

function DespawnRing(NPC, Spawn)
    local zone = GetZone(Spawn)
    local SummonRing = GetSpawnByLocationID(zone,133780600)
    Despawn(NPC)
end