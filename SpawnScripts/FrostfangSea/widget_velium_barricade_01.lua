--[[
	Script Name		:	SpawnScripts/FrostfangSea/widget_velium_barricade_01.lua 
	Script Purpose	:	for the giant boulder barrier in the velinoid caves
	Script Author	:	theFoof
	Script Date		:	2013.6.12
	Script Notes	:	
--]]

local RyGorrOperations = 60

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
	AddSpawnAccess(NPC, NPC)
end

function SpawnAccess(NPC, Spawn)
	if not HasCompletedQuest(Spawn, RyGorrOperations) then
		if GetQuestStep(Spawn, RyGorrOperations) ~= 2 and GetQuestStep(Spawn, RyGorrOperations) ~= 3 then
			AddSpawnAccess(NPC, Spawn)
		end
	end
end