--[[
	Script Name	: SpawnScripts/Castleview/planter_2.lua
	Script Purpose	: planter_2
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_2 = 224

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_2, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, HIGH_ELF_MENTOR_QUEST_2) and not QuestStepIsComplete(Caster, HIGH_ELF_MENTOR_QUEST_2, 2) and SpellName == "Plant Seeds" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Plant the seeds.", "PlantSeeds")
		StartDialogConversation(conversation, 1, Target, Caster, "This is one of the planters that Vindain spoke of.")
	end
end

function PlantSeeds(NPC, Spawn)
	SetStepComplete(Spawn, HIGH_ELF_MENTOR_QUEST_2, 2)
	local GreenWisp = SpawnMob(GetZone(Spawn), 2360173, false, 799.61, -15.529, -127.96, 269.984)
	Despawn(GreenWisp, 300000)
	
	conversation = CreateConversation()
	AddConversationOption(conversation, "Leave the planter.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You place a seed, some soil, and some water into the planter. A fresh green wisp plant begins to grow at a surprising rate.")
end