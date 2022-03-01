--[[
	Script Name	: SpawnScripts/Graystone/brew_barrel.lua
	Script Purpose	: brew_barrel
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

-- Quest ID's
local DWARF_MENTOR_QUEST_2 = 285

-- Item ID's
local MAVS_BREW = 9383

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_2, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
Say(NPC, "HI")
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_2) and GetQuestStep(Spawn, DWARF_MENTOR_QUEST_2) == 1 and SpellName == "Collect brew" then
		SetStepComplete(Spawn, DWARF_MENTOR_QUEST_2, 1)
		
		-- Mav's Brew
		if not HasItem(Spawn, MAVS_BREW, 1) then
			SummonItem(Spawn, MAVS_BREW, 1)
			SummonItem(Spawn, MAVS_BREW, 1)
			SummonItem(Spawn, MAVS_BREW, 1)
		end
	end
end