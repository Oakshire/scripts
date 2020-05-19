--[[
	Script Name	: SpawnScripts/WillowWood/OseofCrestryder.lua
	Script Purpose	: Oseof Crestryder <Crafting Trainer>
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- artisan essentials volume 2
	if not HasItem(Spawn, 31373, 1) then
		AddConversationOption(conversation, "Yes, please teach me.", "dlg_14_1")
	end
	AddConversationOption(conversation, "No, not at the moment.")
	StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- artisan essentials volume 2
	SummonItem(Spawn, 31373, 1)
	if GetTradeskillLevel(Spawn) < 2 then
		SetTradeskillLevel(Spawn, 2)
	end

	AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end