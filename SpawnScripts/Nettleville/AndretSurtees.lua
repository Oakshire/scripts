--[[
	Script Name	: SpawnScripts/Nettleville/AndretSurtees.lua
	Script Purpose	: Andret Surtees 
	Script Author	: Scatman
	Script Date	: 2008.10.08
	Script Notes	: 
--]]

local QUEST_1_FROM_HELAIN = 295
local QUEST_3_FROM_HELAIN = 297

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_3_FROM_HELAIN) or HasCompletedQuest(Spawn, QUEST_3_FROM_HELAIN) then
		if HasQuest(Spawn, QUEST_3_FROM_HELAIN) and GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) == 2 then
			HelloThere(NPC, Spawn, conversation)
		else
			BackAgain(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, QUEST_1_FROM_HELAIN) and GetQuestStep(Spawn, QUEST_1_FROM_HELAIN) == 1 then
		MindYourStepQuest(NPC, Spawn, conversation)
	else
		MindYourStep(NPC, Spawn, conversation)
	end
end

function MindYourStep(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees001.mp3", "", "", 2406711423, 2100048061, Spawn)
	AddConversationOption(conversation, "Thank you.  I'll be careful.")
	StartConversation(conversation, NPC, Spawn, "Mind your step, sometimes the floorboards have a little lip.")
end

-----------------------------------------------------------------------------------------------
--					QUEST_1_FROM_HELAIN
-----------------------------------------------------------------------------------------------

function MindYourStepQuest(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees002.mp3", "", "", 2927697364, 976114271, Spawn)
	AddConversationOption(conversation, "Ah, thank you.  I was sent by Helain Conyers, she said that..", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Mind your step, sometimes the floorboards have a little lip.")
end

function dlg_5_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1_FROM_HELAIN, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees003.mp3", "", "", 3181148477, 966976976, Spawn)
	AddConversationOption(conversation, "No problem.  Thank you!")
	StartConversation(conversation, NPC, Spawn, "That I had some books for her, right ya are.  Here they are!  Careful with that one about Brell Serilis.  It is the oldest, and kinda' falling apart.")
end

-----------------------------------------------------------------------------------------------
--					QUEST_3_FROM_HELAIN
-----------------------------------------------------------------------------------------------

function HelloThere(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees005.mp3", "", "", 2242497941, 3475570879, Spawn)
	AddConversationOption(conversation, "No, no.  She was very excited to have them.  She thought you may have something for me to do. ", "dlg_18_1")
	StartConversation(conversation, NPC, Spawn, "Hello, there!  Don't tell me Helain is done with those books already! ")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees006.mp3", "", "", 3395167985, 2902134044, Spawn)
	AddConversationOption(conversation, "I can see why you would. ", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "She's a sweet girl.  I appreciate her interests in books.")
end

function dlg_18_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3_FROM_HELAIN, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees007.mp3", "", "", 3293202175, 255010916, Spawn)
	AddConversationOption(conversation, "That's OK.  Thank you, anyway.")
	StartConversation(conversation, NPC, Spawn, "Right up my alley, I admit.  Ha ha ha.  But a job?  No, not here.  Normally, I would have a little task of some sort, but not today.")
end

function BackAgain(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/andret_surtees/qey_village01/andretsurtees004.mp3", "", "", 2872376799, 1379943312, Spawn)
	AddConversationOption(conversation, "Oh, I don't know.  I was just stopping in.", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "Back again?  I can't imagine that Helain's done with the books I lent her.")
end