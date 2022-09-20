--[[
    Script Name    : SpawnScripts/IsleRefuge1/aggresiveGobinvisiblecubeTreeHouse1.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.17 11:09:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
Cage4(NPC, Spawn)end

function respawn(NPC)
    spawn(NPC)
end


function Cage4(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin1 = SpawnByLocationID(zone, 133775719) --Goblin1
local Goblin2 = SpawnByLocationID(zone, 133775720) --Goblin1
AddTimer(NPC,3500,"GobLiveCheck")
end



function GobLiveCheck(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin1 = GetSpawnByLocationID(zone, 133775719) --Goblin1
local Goblin2 = GetSpawnByLocationID(zone, 133775720) --Goblin1
local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee

if IsAlive(Goblin1) ==false and IsAlive(Goblin2) ==false then
    if Refugee~=nil then
    waypoints(NPC,Spawn)
    SpawnSet(Refugee,"mood_state",0)    
    SpawnSet(Refugee,"initial_state",16512)    
    AddTimer(NPC,2000,"ThankYou")
    AddTimer(NPC,15000,"DespawnTimer",1,Refugee)
    end
else
    AddTimer(NPC,6000,"GobLiveCheck")
    choice = MakeRandomInt(1,10)
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
    elseif choice == 10 then
    PlayFlavor(Refugee, "", "", "sulk",0,0) 
    end  
  
end
end

function waypoints(NPC,Spawn)
local zone = GetZone(NPC)
local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee
local x=GetX(NPC)
local y=GetY(NPC)
local z=GetZ(NPC)
    PlaySound(NPC, "sounds/widgets/doors/door_metal_slam001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    MovementLoopAddLocation(Refugee, x, y, z, 4, 1)
	MovementLoopAddLocation(Refugee, x, y, z, 4, 6,"ThankYou")
    MovementLoopAddLocation(Refugee, x, y, z, 4, 0)
	MovementLoopAddLocation(Refugee, -72.64, 2.31, -172.96, 4, 0)
	MovementLoopAddLocation(Refugee, -67.83, 2.09, -175.00, 4, 0)
	MovementLoopAddLocation(Refugee, -55.47, 2.10, -167.74, 4, 0,"DespawnTimer")
	MovementLoopAddLocation(Refugee, -51.07, 2.03, -155.3, 4, 0)
	MovementLoopAddLocation(Refugee, -58.84, 2.47, -136.94, 4, 0)
	MovementLoopAddLocation(Refugee, -73.15, 4.10, -131.35, 4, 0)
	MovementLoopAddLocation(Refugee, -78.35, 4.31, -106.29, 4, 0)
	MovementLoopAddLocation(Refugee, -85.59, 4.39, -88.34, 4, 0)
	MovementLoopAddLocation(Refugee, -90.67, 5.88, -79.50, 4, 0)
	MovementLoopAddLocation(Refugee,-92.94, 5.43, -67.58, 4, 0)
	MovementLoopAddLocation(Refugee, -94.12, -9.04, -38.63, 4, 0)
	MovementLoopAddLocation(Refugee, -85.31, -11.73, -4.94, 4, 0)
	MovementLoopAddLocation(Refugee, -72.75, -8.70, 29.3, 4, 0)
	MovementLoopAddLocation(Refugee, -69.56, -7.11, 42.6, 4, 0)
	MovementLoopAddLocation(Refugee, -67.84, -8.05, 58.29, 4, 1)
	MovementLoopAddLocation(Refugee, -67.84, -8.05, 58.29, 4, 6,"ThankYou")
	MovementLoopAddLocation(Refugee, -67.84, -8.05, 58.29, 4, 30,"Despawn")
	MovementLoopAddLocation(Refugee, -67.84, -8.05, 58.29, 4, 0)
end

function ThankYou(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee
    SpawnSet(Refugee,"name","a liberated refugee")
    SpawnSet(Refugee,"faction","34")
    SpawnSet(Refugee,"hp","45")
    SpawnSet(Refugee,"power","45")
    SpawnSet(Refugee,"aggro_radius","3")
    FaceTarget(Refugee,Spawn)
    choice = MakeRandomInt(1,4)
    if choice == 1 then
    PlayFlavor(Refugee, "", "", "thanks",0,0)
    elseif choice == 2 then
    PlayFlavor(Refugee, "", "", "bow",0,0)
    elseif choice == 3 then
    PlayFlavor(Refugee, "", "", "notworthy",0,0)
    elseif choice == 4 then
    PlayFlavor(Refugee, "", "", "cheer",0,0)
    end
end

function ThankYou2(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee
    PlayFlavor(Refugee, "", "", "notworthy",0,0)
end



function DespawnTimer(NPC)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee
    if Refugee ~=nil and IsAlive(Refugee)== true then
        AddTimer(NPC,10000,"DespawnTimer")
    else
    Despawn(NPC)    
        
    end
end

function Despawn(NPC)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775727) --Refugee
    Despawn(Refugee)
    Despawn(NPC)
end