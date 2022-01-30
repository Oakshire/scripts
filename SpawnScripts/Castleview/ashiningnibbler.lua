--[[
    Script Name    : SpawnScripts/Castleview/ashiningnibbler.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.29 04:01:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==418671 then
	MovementLoopAddLocation(NPC, 805.12, -40.76, -109.95, 2, 0)
	MovementLoopAddLocation(NPC, 759.09, -42.80, -92.50, 2, 0)
	
	
	elseif GetSpawnLocationID(NPC)==418622 then
	MovementLoopAddLocation(NPC, 797.46, -41.43, -103.47, 2, 0)
	MovementLoopAddLocation(NPC, 749.28, -41.14, -93.90, 2, 0)
	end
end