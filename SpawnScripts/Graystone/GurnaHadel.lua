--[[
	Script Name	: SpawnScripts/Graystone/GurnaHadel.lua
	Script Purpose	: Gurna Hadel 
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

local DWARF_MENTOR_QUEST_2 = 285

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	GenericHail(NPC, Spawn)
	
	if HasQuest(Spawn, DWARF_MENTOR_QUEST_2) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_2, 3) then
		GotSomethingForMe(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "", "Come back when you've got brew!", "", 1689589577, 4560189, Spawn)
	end
end

function GotSomethingForMe(NPC, Spawn, conversation)
	AddConversationOption(conversation, "A pint, compliments of Mav.", "dlg_18_1")
	StartConversation(conversation, NPC, Spawn, "'Ave ya got something for me?")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yup, her family recipe.", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Her brew, then? Has she finally made some?")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well the day has finally come! She's ready for everyone to try it.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "Good! Took her long enough. I was worried she was just making it all up, I kind of felt sorry for her!")
end

function dlg_18_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "All right. I hope you're ready.", "dlg_18_4")
	StartConversation(conversation, NPC, Spawn, "Fill me up!")
end

function dlg_18_4(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_2, 3)
	
	-- cringe
	SpawnSet(NPC, "visual_state", 11256)
	AddTimer(NPC, 3000, "RemoveVisualState")
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Will do.")
	StartConversation(conversation, NPC, Spawn, "It's got some bite, don't it now? I think I'll be feeling that for a few days to come, give Mav my compliments!")
end

function RemoveVisualState(NPC)
	SpawnSet(NPC, "visual_state", 0)
end