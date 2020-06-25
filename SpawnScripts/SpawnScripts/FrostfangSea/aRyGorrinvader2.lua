--[[
	Script Name		:	SpawnScripts/FrostfangSea/aRyGorrinvader2.lua
	Script Purpose	:	for the Ry'Gorr invaders
	Script Author	:	theFoof
	Script Date		:	2013.6.15
	Script Notes	:	
--]]

local NothingWaste = 56

function spawn(NPC)
	EmoteLoop(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function EmoteLoop(NPC)
	local choice = math.random(1,4)
	local emote
	if choice == 1 then
		emote = "flex"
	elseif choice == 2 then
		emote = "stretch"
	elseif choice == 3 then
		emote = "point"
	elseif choice == 4 then
		emote = "peer"
	end
	PlayFlavor(NPC, "", "", emote, 0, 0)
	AddTimer(NPC, math.random(15000,45000), "EmoteLoop")
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