--[[
	Script Name	: SpawnScripts/QeynosCapitolDistrict/ElspethAstley.lua
	Script Purpose	: Elspeth Astley 
	Script Author	: Shatou
	Script Date	: 2020.01.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ALABASTER_FOR_THE_MAGES_QUEST_ID = 501

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/elspeth_astley/qey_south/elspethastley000.mp3", "", "", 280090355, 624466296, Spawn)
		
		if HasQuest(Spawn, ALABASTER_FOR_THE_MAGES_QUEST_ID) then
			if GetQuestStep(Spawn, ALABASTER_FOR_THE_MAGES_QUEST_ID) == 2 then
				AddConversationOption(conversation, "I have some alabaster you might be interested in.", "dlg_0_1")
			end
		end
		AddConversationOption(conversation, "Thanks for the information.")
	StartConversation(conversation, NPC, Spawn, "The winds of time change many things.  One thing remains the same, the might of the sorcerer.")
end

--[[ QUEST ALABASTER FOR THE MAGES (501) ]]--
function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I've five blocks worth.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Interesting ... how much are you selling? We can always use more alabaster to make wands.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SetStepComplete(Spawn, ALABASTER_FOR_THE_MAGES_QUEST_ID, 2)
	
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll buy all of it.")
end
--[[ QUEST END]]--