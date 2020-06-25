--[[
	Script Name	: SpawnScripts/Caves/awhitespider.lua
	Script Purpose	: a white spider
	Script Author	: Scatman
	Script Date	: 2009.10.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/MovementCircleSmall.lua")

function spawn(NPC)
	local sli = GetSpawnLocationID(NPC)
	if sli == 147821 or sli == 147820 or sli == 147818 or sli == 147817 then
		SpawnChooseRandomMovement(NPC)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end