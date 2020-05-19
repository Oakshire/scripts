--[[
	Script Name	: SpawnScripts/Starcrest/ErianSeaver.lua
	Script Purpose	: Erian Seaver <Crafting Trainer>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, please teach me.", "dlg_4_1")
	AddConversationOption(conversation, "No, not at the moment.")
	StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will start on that now.", "dlg_4_2")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end