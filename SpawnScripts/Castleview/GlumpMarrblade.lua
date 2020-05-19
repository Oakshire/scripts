--[[
	Script Name	: SpawnScripts/Castleview/GlumpMarrblade.lua
	Script Purpose	: Glump Marrblade <Crafting Trainer>
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/GenericVoiceOvers.lua")

function spawn(NPC, Spawn)
end

function respawn(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	GenericHail(NPC, Spawn)
	conversation = CreateConversation()
	
	-- artisan essentials volume 2
	if HasItem(Spawn, 31373, 1) then
		Say(NPC, "I have nothing else to teach you for the moment.  Please return to me when you have earned enough experience to choose your profession.", Spawn)
	else
		AddConversationOption(conversation, "Yes, please teach me.", "TeachMe")
		AddConversationOption(conversation, "No, not at the moment.")
		StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good. We can always use talented artisans. I can help you get started, would you be interested?")
	end
end

function TeachMe(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- artisan essentials volume 2
	SummonItem(Spawn, 31373, 1)
	
	AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting. Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information. Return to me when you are ready to select a crafting speciality.")
end