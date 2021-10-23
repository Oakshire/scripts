--[[
    Script Name    : SpawnScripts/CrowsTomb/acircleintiate.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 08:10:49
    Script Purpose : 
                   : 
--]]



function spawn(NPC)  -- THAT'S HOW THE MOVEMENT SHOULD BE SCRIPTED 
if GetSpawnLocationID(NPC) == 434506 then
MovementLoopAddLocation(NPC, -3.45, -0.39, 6.13, 2, MakeRandomInt(16, 24))
MovementLoopAddLocation(NPC, -3.96, 0.00, -11.80, 2, MakeRandomInt(16, 24))
elseif GetSpawnLocationID(NPC) == 434505 then
MovementLoopAddLocation(NPC, -18.57, 0.00, 9.55, 2, MakeRandomInt(16, 24))
MovementLoopAddLocation(NPC, -19.25, 0.00, -11.34, 2, MakeRandomInt(16, 24))
end
   end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

