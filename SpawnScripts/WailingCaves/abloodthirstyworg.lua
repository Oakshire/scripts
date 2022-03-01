--[[
    Script Name    : SpawnScripts/WailingCaves/abloodthirstyworg.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.08 06:07:51
    Script Purpose : 
                   : 
--]]



function spawn(NPC)

end

function FollowMaster(NPC, Spawn)
local zone = GetZone(NPC)
local WorgMaster = GetSpawnByLocationID(zone, 404870)
if WorgMaster ~= nil then
MoveToLocation(NPC, -266.61, -49.44, -75.15, 2, "FollowMe")
end
end

function FollowMe(NPC, Spawn)
local zone = GetZone(NPC)
local Worg2 = GetSpawnByLocationID(zone, 404851)
local Worg3 = GetSpawnByLocationID(zone, 404850)
local Worg4 = GetSpawnByLocationID(zone, 404849)
MoveToLocation(NPC, -271.25, -49.44, -75.39, 2, "FollowMe2")
MoveToLocation(Worg2, -266.61, -49.44, -75.15, 3)
MoveToLocation(Worg3, -266.61, -49.44, -75.15, 3)
MoveToLocation(Worg4, -266.61, -49.44, -75.15, 3)
end

function FollowMe2(NPC, Spawn)
local zone = GetZone(NPC)
local Worg2 = GetSpawnByLocationID(zone, 404851)
local Worg3 = GetSpawnByLocationID(zone, 404850)
local Worg4 = GetSpawnByLocationID(zone, 404849)
MoveToLocation(NPC, -272.74, -49.44, -81.85, 4, "FollowMe3")
MoveToLocation(Worg2, -271.25, -49.44, -75.39, 4)
MoveToLocation(Worg3, -271.25, -49.44, -75.39, 4)
MoveToLocation(Worg4, -271.25, -49.44, -75.39, 4)
SetTempVariable(NPC, "Ready", "true")
end

function FollowMe3(NPC, Spawn)
 local zone = GetZone(NPC)
local Worg2 = GetSpawnByLocationID(zone, 404851)
local Worg3 = GetSpawnByLocationID(zone, 404850)
local Worg4 = GetSpawnByLocationID(zone, 404849)
MoveToLocation(Worg2, -273.00, -49.43, -79.14, 4)
MoveToLocation(Worg3, -273.02, -49.44, -77.29, 4)
MoveToLocation(Worg4, -273.05, -49.44, -75.31, 4)
end






function respawn(NPC)
         spawn(NPC)
end

