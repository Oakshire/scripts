--[[
	Script Name	: SpawnScripts/NorthQeynos/JasonMerrytoe.lua
	Script Purpose	: Jason Merrytoe <Tradeskill Tutorial>
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
	StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
		StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	end

	if convo==18 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
		StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	end

	if convo==26 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
		StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	end

end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Whoops, look at the time, got to go.")
	StartConversation(conversation, NPC, Spawn, "Would you like to learn about harvesting, or skip straight to the crafting process?  ")
end

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Whoops, look at the time, got to go.")
	StartConversation(conversation, NPC, Spawn, "Would you like to learn about harvesting, or skip straight to the crafting process?  ")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll get right on it.", "dlg_18_3")
	StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
end

