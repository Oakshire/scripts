--[[
	Script Name	: SpawnScripts/Baubbleshire/TawliWhiskwind.lua
	Script Purpose	: Tawli Whiskwind 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

local QUEST_FROM_VIDA_NETTLEVILE = 310

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tawli_whiskwind/qey_village06/tawliwhiskwind000.mp3", "", "", 2721335951, 3874016215, Spawn)
	if HasQuest(Spawn, QUEST_FROM_VIDA_NETTLEVILE) and GetQuestStep(Spawn, QUEST_FROM_VIDA_NETTLEVILE) == 1 then
		AddConversationOption(conversation, "Vida Sweeps asked me to pick up a broom for her.  She wore her old one out.", "dlg_2_1")
	end
	AddConversationOption(conversation, "I'm not really looking for a broom today, but thanks anyway.")
	StartConversation(conversation, NPC, Spawn, "Good day to you, deary!  I make the most wonderful brooms--strong bristles, stout handles, and quite stylish if you ask me.  Great for sweeping off your doorstep or scaring off little critters!")
end

function dlg_2_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_VIDA_NETTLEVILE, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tawli_whiskwind/qey_village06/tawliwhiskwind001.mp3", "", "", 1438734412, 3399833695, Spawn)
	AddConversationOption(conversation, "Thank you.  I know she'll put it to work right away.")
	StartConversation(conversation, NPC, Spawn, "Well, if anyone can wear out a broom, it's Vida. She sweeps so much you could eat off her spotless floor! Here's her new broom. I hope she uses it well.")
end