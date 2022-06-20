--[[
    Script Name    : SpawnScripts/ThunderingSteppes/InvisCubeOttThunderingSteppes.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 03:06:21
    Script Purpose : Spawns Ott Stompgutt and bears if player is on Armor Quest 6 Finding Ian's Heirlooms.
                   : 
--]]

local RespawnTimer = false

function spawn(NPC)
    SetPlayerProximityFunction(NPC,16, "InRange", "LeaveRange")		
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
if RespawnTimer == false then       --Disable respawns for 11 min
if GetQuestStep(Spawn,5593)==3 then --Player Quest Step Check (should be step 3, but available anywhere between 1-3)
Ott = GetSpawn(NPC,2490835)
Bears = GetSpawn(NPC,2490836)
    if Ott == nil and Bears == nil then
    RespawnTimer = true
	zone = GetZone(Spawn)
local	OttSpawn = SpawnByLocationID(zone,133773389)
local	Bear1 = SpawnByLocationID(zone,133773387)
local   Bear2 = SpawnByLocationID(zone,133773388)
AddTimer(NPC,3000,"OttShout")
AddTimer(NPC,660000,"ResetTimer")
        SetTarget(Ott,Spawn)
        SetTarget(Bear1,Spawn)
        SetTarget(Bear2,Spawn)
        AddHate(Spawn, OttSpawn, 100)    
        AddHate(Spawn, Bear1, 100)    
        AddHate(Spawn, Bear2, 100)
else                                    --forces spawns to attack if still up
    zone = GetZone(Spawn)
local	OttSpawn = GetSpawnByLocationID(zone,133773389)
local	Bear1 = GetSpawnByLocationID(zone,133773387)
local   Bear2 = GetSpawnByLocationID(zone,133773388)
         SetTarget(Ott,Spawn)
        SetTarget(Bear1,Spawn)
        SetTarget(Bear2,Spawn)
        AddHate(Spawn, OttSpawn, 100)    
        AddHate(Spawn, Bear1, 100)    
        AddHate(Spawn, Bear2, 100)   
end
end
end
end

function OttShout(NPC,Spawn)
 Ott = GetSpawn(NPC,2490835)   
    if Ott ~= nil then    
    PlayFlavor(Ott,"","Ye come lookin' for that sticker the fool dropped when he ran?  Ye can't have it!  It's mine now!","",0,0)
end
end	

function ResetTimer(NPC,Spawn)
	RespawnTimer = false
end