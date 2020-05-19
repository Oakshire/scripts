--[[
	Script Name	: SpawnScripts/GreaterFaydark/IkileHarmonia.lua
	Script Purpose	: Ikile Harmonia <Tradeskill Tutorial>
	Script Author	: John Adams
	Script Date	: 2009.03.01
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

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Yes please, I don't know much about that stuff.", "dlg_77_1")
	AddConversationOption(conversation, "Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.")
	AddConversationOption(conversation, "No thanks, I have other things to do right now.")
	StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	if convo==78 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Yes please, I don't know much about that stuff.", "dlg_78_1")
		AddConversationOption(conversation, "Sure, I think I'm pretty comfortable with it all but I can always use a memory refresher.")
		AddConversationOption(conversation, "No thanks, I have other things to do right now.")
		StartConversation(conversation, NPC, Spawn, "Hello, friend!  I'm here to teach interested people a little bit about how to harvest crafting materials, and how to craft tradeskilled items.  Are you interested?")
	end

end

function dlg_77_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Let's start from the beginning with the harvesting.", "dlg_77_2")
	AddConversationOption(conversation, "I've already done some harvesting, tell me what I can do with it all.")
	AddConversationOption(conversation, "Whoops, look at the time, got to go.")
	StartConversation(conversation, NPC, Spawn, "Would you like to learn about harvesting, or skip straight to the crafting process?  ")
end

function dlg_78_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Let's start from the beginning with the harvesting.")
	AddConversationOption(conversation, "I've already done some harvesting, tell me what I can do with it all.", "dlg_78_2")
	AddConversationOption(conversation, "Whoops, look at the time, got to go.")
	StartConversation(conversation, NPC, Spawn, "Would you like to learn about harvesting, or skip straight to the crafting process?  ")
end

function dlg_78_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "I'll get right on it.", "dlg_78_3")
	StartConversation(conversation, NPC, Spawn, "Harvesting resources tend to be segregated by areas - for example, you'll be able to harvest items (often also called nodes) for making equipment for level 1-9 adventurers, in the same areas where you'll find level 1-9 adventurers hunting.  There are seven types of harvestable item:  wood, roots, ore, soft metal, animal dens, shrubs, and fish.  I'd like you to get a few harvests from each type of harvestable item.")
end

