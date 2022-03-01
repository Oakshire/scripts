--[[
	Script Name	: SpawnScripts/Nettleville/inspect_reagentshelf01.lua
	Script Purpose	: inspect_reagentshelf01
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	: 
--]]

local QUEST_1 = 312
local QUEST_FROM_OAKMYST = 999

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if SpellName == "inspect" then
		conversation = CreateConversation()
		if not HasQuest(Caster, QUEST_1) and not HasCompletedQuest(Caster, QUEST_1) then
			AddConversationOption(conversation, "Inspect jars of Oakmyst spider silk.", "OfferQuest1")
		end
		if HasQuest(Caster, QUEST_FROM_OAKMYST) and GetQuestStep(Caster, QUEST_FROM_OAKMYST) == 1 then
			AddConversationOption(conversation, "Inspect jars of Smitelin's Excel-a-gro.", "ExcelAGro")
		end
		AddConversationOption(conversation, "Stop browsing.", "CloseConversation")
		StartDialogConversation(conversation, 1, Target, Caster, "This is Varion Smitelin's reagent shelf. It seems to have various reagents as well as a number of tomes.")
	end
end

function OfferQuest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
	local conversation = CreateConversation()
	
	AddConversationOption(conversation, "Stop browsing.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "This jar is filled with spider silk but looks rather low, I should help Varion out by gathering some more.")
end

function ExcelAGro(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Take a pinch of the nutrient.", "TakeAPinch")
	AddConversationOption(conversation, "Stop browsing.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "This jar is filled with some form of arcane nutrient for plants.")
end

function TakeAPinch(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_OAKMYST, 1)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Stop browsing.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You take a small pinch of the nutrient and pack it into a small pocket.")
end