--[[
    Script Name    : SpawnScripts/IsleRefuge1/aggresiveGobinvisiblecube6.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.08 08:09:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
Cage6(NPC, Spawn)end

function respawn(NPC)
    spawn(NPC)
end

function Cage6(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin1 = GetSpawnByLocationID(zone, 133775216) --Goblin1
if IsAlive(Goblin1)== false or Goblin1 == nil then 
SpawnByLocationID(zone, 133775216) --Goblin1
end
AddTimer(NPC,3500,"GobLiveCheck")
end



function GobLiveCheck(NPC, Spawn)
local zone = GetZone(NPC)
local Goblin1 = GetSpawnByLocationID(zone, 133775216) --Goblin1
local Refugee = GetSpawnByLocationID(zone, 133775267) --Refugee

if IsAlive(Goblin1) ==false then
    if Refugee~=nil then
    waypoints(NPC,Spawn)
    SpawnSet(Refugee,"mood_state",0)    
    SpawnSet(Refugee,"initial_state",16512)    
    AddTimer(NPC,2000,"ThankYou")
    AddTimer(NPC,15000,"DespawnTimer")
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
local Refugee = GetSpawnByLocationID(zone, 133775267) --Refugee
local x=GetX(NPC)
local y=GetY(NPC)
local z=GetZ(NPC)
    PlaySound(NPC, "sounds/widgets/doors/door_metal_slam001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    MovementLoopAddLocation(Refugee, x, y, z, 4, 1)
	MovementLoopAddLocation(Refugee, x, y, z, 4, 6,"ThankYou")
    MovementLoopAddLocation(Refugee, x, y, z, 4, 0)
	MovementLoopAddLocation(Refugee, 261.68, -4.09, 1.95, 4, 0)
	MovementLoopAddLocation(Refugee, 259.68, -3.95, 2.40, 4, 0,"DespawnTimer")
	MovementLoopAddLocation(Refugee, 252.05, -3.92, 1.43, 4, 15)
end

function ThankYou(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775267) --Refugee
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

function DespawnTimer(NPC,Spawn)
    local zone = GetZone(NPC)
    local Refugee = GetSpawnByLocationID(zone, 133775267) --Refugee
    if GetSpawnByLocationID(zone, 133775267) ~=nil then
    Despawn(Refugee) 
    end
    Despawn(NPC)    
    end

