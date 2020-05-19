--[[
	Script Name	: SpawnScripts/Graystone/dock_barrel_correct.lua
	Script Purpose	: dock_barrel_correct
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

local BARBARIAN_MENTOR_QUEST_2 = 290
local DWARF_MENTOR_QUEST_3 = 286

function spawn(NPC)
	SetRequiredQuest(NPC, DWARF_MENTOR_QUEST_3, 2)
	SetRequiredQuest(NPC, BARBARIAN_MENTOR_QUEST_2, 4)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, BARBARIAN_MENTOR_QUEST_2) and GetQuestStep(Caster, BARBARIAN_MENTOR_QUEST_2) == 4 and SpellName == "inspect" then
		AddStepProgress(Caster, BARBARIAN_MENTOR_QUEST_2, 4, 1)
		SendMessage(Caster, "This crate is not from shipment CG4QC.")
		SpawnSet(Target, "show_command_icon", 0)
		AddTimer(Target, 30000, "ResetBarrel")
	elseif HasQuest(Caster, DWARF_MENTOR_QUEST_3) and GetQuestStep(Caster, DWARF_MENTOR_QUEST_3) == 2 and SpellName == "inspect" then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Pick up Mav's package.", "PickupMavsPackage")
		StartDialogConversation(conversation, 1, Target, Caster, "There is a package for Mav Boilfist sitting just inside this barrel.")
	end
end

function PickupMavsPackage(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_3, 2)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Close barrel.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You remove Mav's rather heavy package from the barrel. You'll need to clear this with the Shipping Coordinator before you can give it to Mav.")
end

function ResetBarrel(NPC)
	SpawnSet(NPC, "show_command_icon", 1)
end