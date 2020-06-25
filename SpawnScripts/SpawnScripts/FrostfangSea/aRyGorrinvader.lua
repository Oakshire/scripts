--[[
	Script Name		:	SpawnScripts/FrostfangSea/aRyGorrinvader.lua
	Script Purpose	:	for the Ry'Gorr invaders
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]
require"SpawnScripts/Generic/random_pattern_small"

local NothingWaste = 56

function spawn(NPC)
	ChooseMovement(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
	if HasQuest(Spawn, NothingWaste) then
		if GetQuestStep(Spawn, NothingWaste) < 4 then
			if not QuestStepIsComplete(Spawn, NothingWaste, 1) then
			    local HelmetChance = math.random(1, 100)
				if HelmetChance >= 50 then
			    	AddLootItem(NPC, 11818)
			    end
			end
			if not QuestStepIsComplete(Spawn, NothingWaste, 2) then
				local ChestguardChance = math.random(1,100)
				if ChestguardChance >= 50 then
				    AddLootItem(NPC, 11817)
			    end
			end
			if not QuestStepIsComplete(Spawn, NothingWaste, 3) then
			    local WarhammerChance = math.random(1,100)
			    if WarhammerChance >= 50 then
			    	AddLootItem(NPC, 11824)
			    end
			end
		end
	end
end