--[[
    Script Name    : SpawnScripts/TimorousDeep/asiltstorm.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 08:05:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange")
	if GetSpawnLocationID(NPC) == 51471 then
	  MovementLoopAddLocation(NPC, 9.46, 5.33, -69.46, 2, 0)
	   MovementLoopAddLocation(NPC, 30.84, 4.48, -94.77, 2, 0)
end
   end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	Knockback(NPC, Spawn, 500, -100, 25) -- PUSH PLAYER UP FROM STORM
end
