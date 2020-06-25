--[[
	Script Name		:	SpawnScripts/FrostfangSea/aRyGorrwarshaman.lua
	Script Purpose	:	for the ry'gorr war shamans
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]

local RoughingReinforcements = 57

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
	if GetQuestStep(Spawn, RoughingReinforcements) == 4 or GetQuestStep(Spawn, RoughingReinforcements) == 5 then
		AddLootItem(NPC, 11820)
	end
end