--[[
	Script Name	: SpawnScripts/Castleview/planter_5.lua
	Script Purpose	: planter_5
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_2 = 224
local HIGH_ELF_MENTOR_QUEST_3 = 225
local HIGH_ELF_MENTOR_QUEST_4 = 226

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_2, 5)
	SetPlayerProximityFunction(NPC, 10, "InRange2", "LeaveRange")
	SetPlayerProximityFunction(NPC, 10, "InRange3", "LeaveRange")
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, HIGH_ELF_MENTOR_QUEST_2) and not QuestStepIsComplete(Caster, HIGH_ELF_MENTOR_QUEST_2, 5) and SpellName == "Plant Seeds" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Plant the seeds.", "PlantSeeds")
		StartDialogConversation(conversation, 1, Target, Caster, "This is one of the planters that Vindain spoke of.")
	end
end

function PlantSeeds(NPC, Spawn)
	SetStepComplete(Spawn, HIGH_ELF_MENTOR_QUEST_2, 5)
	local GreenWisp = SpawnMob(GetZone(Spawn), 2360169, false, 712, -15.4961, -162.534, 200)
	local agitated_spirit = SpawnMob(GetZone(Spawn), 2360057, false, 712, -15.4961, -162.534, 200)
	if agitated_spirit ~= nil then
		AddHate(agitated_spirit, Spawn, 100)
	end
	Despawn(GreenWisp, 300000)
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the planter.")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You place a seed, some soil, and some water into the planter. The Green Wisp plant begins to grow, but then gurgles and pulls itself from the planter!")
end

function InRange2(NPC, Spawn)
Say(NPC, "InRange2")
	if HasQuest(Spawn, HIGH_ELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, HIGH_ELF_MENTOR_QUEST_3) == 2 then
Say(NPC, "Passed quest check, spawning shrub")
		local corrupted_green_wisp = GetSpawn(Spawn, 2360130)
		if corrupted_green_wisp == nil then
			corrupted_green_wisp = SpawnMob(GetZone(NPC), 2360130, false, 712.015, -15.4941, -162.501, 200)
			Despawn(corrupted_green_wisp, 180000)
		end
	end
end

function InRange3(NPC, Spawn)
	if HasQuest(Spawn, HIGH_ELF_MENTOR_QUEST_4) and GetQuestStep(Spawn, HIGH_ELF_MENTOR_QUEST_4) == 1 then
		local Spirit = SpawnMob(GetZone(NPC), 2360059, false, 710.408, -15.5306, -161.493, 200)
		Despawn(Spirit, 120000)
	end
end

function LeaveRange(NPC, Spawn)
end
