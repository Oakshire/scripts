--[[
	Script Name	: SpawnScripts/Nettleville/NawalTahri.lua
	Script Purpose	: Nawal Tahri <Crafting Trainer>
	Script Author	: scatman
	Script Date	: 2009.08.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

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
	
	RandomVoiceOver(NPC, Spawn)

	-- artisan essentials volume 2
	if HasItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2) then
		Say(NPC, "I have nothing else to teach you for the moment. Please return to me when you have earned enough experience to choose your profession.", Spawn)
	else
		AddConversationOption(conversation, "Yes, please teach me.", "dlg_8_1")
		AddConversationOption(conversation, "No, not at the moment.")
		StartConversation(conversation, NPC, Spawn, "You show interest in the crafting trade, good.  We can always use talented artisans.  I can help you get started, would you be interested?")
	end
end

function RandomVoiceOver(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1047.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1047.mp3", "", "", 0, 0, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1047.mp3", "", "", 0, 0, Spawn)
	end
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	-- artisan essentials volume 2
	SendMessage(Spawn, "You receive [artisan essentials volume 2].")
	SendPopUpMessage(Spawn, "You receive artisan essentials volume 2", "yellow")
	SummonItem(Spawn, ARTISAN_ESSENTIALS_VOLUME_2)

	PlayFlavor(NPC, "", "", "point", 0, 0, Spawn)
	AddConversationOption(conversation, "I will start on that now.")
	StartConversation(conversation, NPC, Spawn, "There, you now have knowledge required to begin crafting.  Speak to the Tradeskill Tutor for more detailed guidance on learning to craft, if you are interested in more information.  Return to me when you are ready to select a crafting specialty.")
end