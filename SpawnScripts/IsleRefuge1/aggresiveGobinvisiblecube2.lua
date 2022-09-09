--[[
    Script Name    : SpawnScripts/IsleRefuge1/aggresiveGobinvisiblecube2.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 02:09:19
    Script Purpose : Handle's goblin aggressor spawns & refugees on Isle of Refuge
                   : 
--]]



function spawn(NPC)
CampSpawn (NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function CampSpawn(NPC)
if GetSpawnLocationID(NPC)==133775199 then
Cage2(NPC)
end
end

function Cage2(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin = SpawnByLocationID(zone, 133775212) --Goblin
AddTimer(NPC,3500,"GobLiveCheck")
end



function GobLiveCheck(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin = GetSpawnByLocationID(zone, 133775212) --Goblin
local Refugee = GetSpawnByLocationID(zone, 133775245) --Refugee

if IsAlive(Goblin) ==false then
    if GetSpawnByLocationID(zone, Refugee)~=nil then
    waypoints(NPC,Spawn)
    SpawnSet(Refugee,"mood_state",0)    
    SpawnSet(Refugee,"initial_state",16512)    
    AddTimer(NPC,2000,"ThankYou")
    AddTimer(NPC,15000,"DespawnTimer",1,Refugee)
    end
else
    choice = MakeRandomInt(1,9)
    if choice == 1 then
    PlayFlavor(Refugee, "", "", "cringe",0,0)
    elseif choice == 2 then
    PlayFlavor(Refugee, "", "", "tantrum_short",0,0)
    elseif choice == 3 then
    PlayFlavor(Refugee, "", "", "sigh",0,0)
    elseif choice == 4 then
    PlayFlavor(Refugee, "", "", "squeal",0,0)
    elseif choice == 5 then
    PlayFlavor(Refugee, "", "", "threten",0,0)
    elseif choice == 6 then
    PlayFlavor(Refugee, "", "", "wince",0,0) 
    elseif choice == 7 then
    PlayFlavor(Refugee, "", "", "crazy",0,0)
    elseif choice == 8 then
    PlayFlavor(Refugee, "", "", "pout",0,0) 
    elseif choice == 9 then
    PlayFlavor(Refugee, "", "", "frustrated",0,0) 
    elseif choice == 9 then
    PlayFlavor(Refugee, "", "", "sulk",0,0) 
    end   
  
AddTimer(NPC,6000,"GobLiveCheck")
end
end

function waypoints(NPC,Spawn)
local zone = GetZone(NPC)
local Refugee = GetSpawnByLocationID(zone, 133775245) --Refugee
local x=GetX(NPC)
local y=GetY(NPC)
local z=GetZ(NPC)
    MovementLoopAddLocation(Refugee, x, y, z, 4, 1)
	MovementLoopAddLocation(Refugee, x, y, z, 4, 6,"ThankYou")
    MovementLoopAddLocation(Refugee, x, y, z, 4, 0)
	MovementLoopAddLocation(Refugee, 273.33, -4.83, -6.67, 4, 0)
	MovementLoopAddLocation(Refugee, 264.44, -5.09, -6.10, 4, 0)
	MovementLoopAddLocation(Refugee, 258.38, -4.60, -5.26, 4, 0,"DespawnTimer")
	MovementLoopAddLocation(Refugee, 252.05, -3.92, 1.43, 4, 15)
end

function ThankYou(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775245) --Refugee
    FaceTarget(Refugee,Spawn)
    choice = MakeRandomInt(1,3)
    if choice == 1 then
    PlayFlavor(Refugee, "", "", "thanks",0,0)
    elseif choice == 2 then
    PlayFlavor(Refugee, "", "", "bow",0,0)
    elseif choice == 3 then
    PlayFlavor(Refugee, "", "", "notworthy",0,0)
    end
end

function DespawnTimer(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775245) --Refugee
    Despawn(Refugee)    
    Despawn(NPC)    
    end

