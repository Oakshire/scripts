--[[
	Script Name	: SpawnScripts/ButcherblockMountains/BiminiBowchaser.lua
	Script Purpose	: Bimini Bowchaser <The Far Seas Trading Company>
	Script Author	: jakejp
	Script Date	: 2018.06.02
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local CaptainSays = 267

function spawn(NPC)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, CaptainSays) and GetQuestStep(Spawn, CaptainSays) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Avast ye, shortie! I come with Cap'n Stonnacky new orders for you!", "dlg_6_1")
		AddConversationOption(conversation, "Blimmey! You're three sheets to the wind!")
		StartConversation(conversation, NPC, Spawn, "Oooooh, what do ya do wit' a drunken halfling? What do ya do wit' a drunken' halfling? What do ya do wit' meeee.... *hick-up*.")
	else
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Blimey! You're three sheets to the wind!")
		StartConversation(conversation, NPC, Spawn, "Oooooh, what do ya do wit' a drunken halfling? What do ya do wit' a drunken' halfling? What do ya do wit' meeee.... *hick-up*.")
	end
	
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "You're to coil down the lines an' be sure the flemish boat falls correctly!", "WrongChoice")
	AddConversationOption(conversation, "You're to flemish down the boat falls an' be sure all the lines are coiled correctly!", "dlg_6_2")
	AddConversationOption(conversation, "You're to flemish down the lines an' be sure the boat is coiled correctly.", "WrongChoice")
	StartConversation(conversation, NPC, Spawn, "Oh yeah? And just what exactly do he want me to do?")
end

function dlg_6_2(NPC, Spawn)
	SetStepComplete(Spawn, CaptainSays, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "On the double, matey!")
	StartConversation(conversation, NPC, Spawn, "Oh! Aye aye. You tell the Cap'n I'll be right on it!")
end

function WrongChoice(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Wait, maybe I had that wrong. Let me try again.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "He wants me to do what?! Ha ha ha! Tha's a good one. Almost made me believe you really did have orders from the ol' Cap'n hisself? *hick-up*.")
end


