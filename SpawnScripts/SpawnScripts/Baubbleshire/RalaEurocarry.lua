--[[
	Script Name	: SpawnScripts/Baubbleshire/RalaEurocarry.lua
	Script Purpose	: Rala Eurocarry <Crafting Trainer>
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

-- Item ID's
local ARTISAN_ESSENTIALS_VOLUME_2 = 31373

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	GenericHail(NPC, Spawn)
	
	if not HasItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1) then
		AddConversationOption(conversation, "Yes, please teach me.", "dlg_39_1")
		AddConversationOption(conversation, "No, not at the moment.")
		StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
	else
		Say(NPC, "I have nothing else to teach you for the moment. Please return to me when you have earned enough experience to choose your profession.", Spawn)
	end
end

function dlg_39_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- artisan essentials volume 2
	SummonItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2, 1)
	
	AddConversationOption(conversation, "I will start on that now.", "dlg_39_2")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end