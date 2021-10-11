--[[
    Script Name    : SpawnScripts/CrowsTomb/anUnseenHandtaskmaster.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 06:10:07
    Script Purpose : 
                   : 
--]]


local TheMotleyMerchantManifest = 5368

function spawn(NPC)
	SetTempVariable(NPC, "spoken", "1")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetTempVariable(NPC, "spoken") == "1" then
	PlayFlavor(NPC, "",  "Ahh, you must be the new initiates, make yourselves useful and start cleaning up some of the debris. And be quick about it!", "", 1689589577, 4560189, Spawn)
    SetTempVariable(NPC, "spoken", "2")
    AddTimer(NPC, 60000, "timer", 1, Spawn)
    elseif GetTempVariable(NPC, "spoken") == "2" then
    PlayFlavor(NPC, "", "Did you not hear me, I told you to clean.", "", 1689589577, 4560189, Spawn)
    elseif GetTempVariable(NPC, "spoken") == "3" then
    PlayFlavor(NPC, "", "Well since you finished cleaning up here, head to the back and see if there's anything you can do for them.", "", 1689589577, 4560189, Spawn)
    elseif HasCompletedQuest(Spawn, TheMotleyMerchantManifest) then
    PlayFlavor(NPC, "", "Welcome back, good work on that last task.", "", 1689589577, 4560189, Spawn)
    
end
   end

function timer(NPC, Spawn)
local zone = GetZone(Spawn)   
local debris_1 = GetSpawnByLocationID(zone, 487470)
local debris_2 = GetSpawnByLocationID(zone, 487471)
local debris_3 = GetSpawnByLocationID(zone, 487473)
if debris_1 == nil and debris_2 == nil and debris_3 == nil then
   SetTempVariable(NPC, "spoken", "3")
else
local initiate1 = GetSpawnByLocationID(zone, 434504)
local initiate2 = GetSpawnByLocationID(zone, 434505)
local initiate3 = GetSpawnByLocationID(zone, 434506)
local initiate4 = GetSpawnByLocationID(zone, 434507)
if initiate1 ~= nil or initiate2 ~= nil or initiate3 ~= nil or initiate4 ~= nil then
SpawnSet(initiate1, "faction", 1)
SpawnSet(initiate2, "faction", 1)
SpawnSet(initiate3, "faction", 1)
SpawnSet(initiate4, "faction", 1)
end
SpawnSet(NPC, "faction", 1)
end
   end
  
function death(NPC, Spawn)
local zone = GetZone(Spawn)
local initiate1 = GetSpawnByLocationID(zone, 434504)
local initiate2 = GetSpawnByLocationID(zone, 434505)
local initiate3 = GetSpawnByLocationID(zone, 434506)
local initiate4 = GetSpawnByLocationID(zone, 434507)
local Rollus = GetSpawnByLocationID(zone, 434508)
if initiate1 ~= nil then
SpawnSet(initiate1, "faction", 1)
elseif initiate2 ~= nil then
SpawnSet(initiate2, "faction", 1)
elseif initiate3 ~= nil then
SpawnSet(initiate3, "faction", 1)
elseif initiate4 ~= nil then
SpawnSet(initiate4, "faction", 1)
end 
SpawnSet(Rollus, "attackable", 1)
SpawnSet(Rollus, "show_level", 1)
SpawnSet(Rollus, "show_command_icon", 1)
AddTimer(NPC, 500, "fippy_runaway", 1, Spawn)
end

function fippy_runaway(NPC, Spawn)
if not HasQuest(Spawn, TheMotleyMerchantManifest) and not HasCompletedQuest(Spawn, TheMotleyMerchantManifest) then
local zone = GetZone(Spawn)
local Fippy = GetSpawnByLocationID(zone, 434509)
MoveToLocation(Fippy, 18.47, 1.17, 0.28, 6)
MoveToLocation(Fippy, 20.21, -0.39, -9.02, 6)
MoveToLocation(Fippy, -16.11, -0.39, -8.09, 6)
MoveToLocation(Fippy, -21.92, 0.00, -1.78, 6)
AddTimer(NPC, 13000, "despawn_fippy", 1, Spawn)
end
   end
  
 function despawn_fippy(NPC, Spawn)
 local zone = GetZone(Spawn)
local Fippy = GetSpawnByLocationID(zone, 434509)
Despawn(Fippy)
end


function respawn(NPC)
	spawn(NPC)
end
   