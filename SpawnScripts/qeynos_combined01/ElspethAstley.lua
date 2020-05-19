--[[
	Script Name	: SpawnScripts/QeynosCapitolDistrict/ElspethAstley.lua
	Script Purpose	: Elspeth Astley 
	Script Author	: Shatou
	Script Date	: 2020.01.06
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/elspeth_astley/qey_south/elspethastley000.mp3", "", "", 280090355, 624466296, Spawn)
		AddConversationOption(conversation, "I have some alabaster you might be interested in.", "dlg_0_1")
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
	
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Perfect. I'll buy all of it.")
end
--[[ QUEST END]]--