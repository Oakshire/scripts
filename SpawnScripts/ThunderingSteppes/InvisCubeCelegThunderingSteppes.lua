--[[
    Script Name    : SpawnScripts/ThunderingSteppes/InvisCubeCelegThunderingSteppes.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.08 11:07:55
    Script Purpose : 
                   : 
--]]
local RespawnTimer = false

function spawn(NPC)
    SetPlayerProximityFunction(NPC,18, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if RespawnTimer == false then       --Disable respawns for 11 min
if GetQuestStep(Spawn,5617)==4 then --Player Quest Step Check (should be step 4, but available anywhere between 1-4)
Celeg = GetSpawn(NPC,2490842)
Crows = GetSpawn(NPC,2490843)
    if Celeg == nil and Crows == nil then
    RespawnTimer = true
	zone = GetZone(Spawn)
local	CelegSpawn = SpawnByLocationID(zone,133773583)
local	Crow1 = SpawnByLocationID(zone,133773585)
local   Crow2 = SpawnByLocationID(zone,133773584)
AddTimer(NPC,3000,"CelegShout")
AddTimer(NPC,660000,"ResetTimer")
        SetTarget(CelegSpawn,Spawn)
        SetTarget(Crow1,Spawn)
        SetTarget(Crow2,Spawn)
        AddHate(Spawn, CelegSpawn, 100)    
        AddHate(Spawn, Crow1, 100)    
        AddHate(Spawn, Crow2, 100)
else                                    --forces spawns to attack if still up
    zone = GetZone(Spawn)
local	CelegSpawn = SpawnByLocationID(zone,133773583)
local	Crow1 = SpawnByLocationID(zone,133773585)
local   Crow2 = SpawnByLocationID(zone,133773584)
        SetTarget(CelegSpawn,Spawn)
        SetTarget(Crow1,Spawn)
        SetTarget(Crow2,Spawn)
        AddHate(Spawn, CelegSpawn, 100)    
        AddHate(Spawn, Crow1, 100)    
        AddHate(Spawn, Crow2, 100)
end
end
end
end

function CelegShout(NPC,Spawn)
 Celeg = GetSpawn(NPC,2490842)   
    if Celeg ~= nil then    
    PlayFlavor(Celeg,"","You should not have come here, Gildas sends others to do his work I see.  I'll make sure you never leave alive!","",0,0)
end
end	

function ResetTimer(NPC,Spawn)
	RespawnTimer = false
end