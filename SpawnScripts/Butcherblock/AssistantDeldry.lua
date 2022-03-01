--[[
	Script Name	: SpawnScripts/ButcherblockMountains/AssistantDeldry.lua
	Script Purpose	: Assistant Deldry 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local NecessaryPrecautions = 273

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, NecessaryPrecautions) == true and GetQuestStep(Spawn, NecessaryPrecautions) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Forgiving your tone, I do have a message to you from the camp.  They wish to establish some manner of cooperation with you and your kin.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Ach!  What is this?  Come from the walking lizards, have you?  I thought those things were keeping to their shanties over on the far side of the beach!")
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
		PlayFlavor(NPC, "", "There are plenty of duties to tend to around here, and I aim to see they all get done.", "", 1689589577, 4560189, Spawn)
	end
end

function dlg_15_1(NPC, Spawn)
	SetStepComplete(Spawn, NecessaryPrecautions, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thanks, I guess.  Farewell.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "I can't see how we would need any help from the likes of them - things seem to be more or less well in hand for us.  But I suppose this isn't really about what we need.  Very well, I'll  look over this proposal and see what they have to offer.  In the meantime, you might as well make yourself useful around here.  I'm sure you can find plenty to do if you look hard enough.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1009.mp3", "", "", 0, 0, Spawn)
	PlayFlavor(NPC, "", "There are plenty of duties to tend to around here, and I aim to see they all get done.", "", 1689589577, 4560189, Spawn)
--]]

