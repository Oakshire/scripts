--[[
    Script Name    : SpawnScripts/CrowsTomb/aCircleIntiate.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 08:10:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 500, "movement", 1)  
end    

function movement(NPC, Spawn)
local zone = GetZone(Spawn)   
local NPC_Spawn = GetSpawn(NPC)
local initiate_1 = GetSpawnByLocationID(zone, 434504)
local initiate_2 = GetSpawnByLocationID(zone, 434505)
local initiate_3 = GetSpawnByLocationID(zone, 434506)
local initiate_4 = GetSpawnByLocationID(zone, 434507)
if  initiate_4 == NPC_Spawn then
MovementLoopAddLocation(initiate_4, -10.91, 0.00, 9.04, 2, 0)
elseif  initiate_3 == NPC_Spawn then
MovementLoopAddLocation(initiate_3, -3.64, -0.39, 4.21, 2, 0)   
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end



function respawn(NPC)
	spawn(NPC)
end