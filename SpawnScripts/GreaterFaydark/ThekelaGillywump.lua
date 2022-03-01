--[[
	Script Name	: SpawnScripts/GreaterFaydark/ThekelaGillywump.lua
	Script Purpose	: Thekela Gillywump 
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

		PlayFlavor(NPC, "voiceover/english/exp03_questvo2/thekela_gillywump/_exp03/exp03_rgn_greater_faydark/scp/thekela/thekela000.mp3", "", "", 1458913689, 1852168109, Spawn)
	AddConversationOption(conversation, "XXXXXXXX.", "dlg_33_1")
	StartConversation(conversation, NPC, Spawn, "Greetings! I'm Thekela! What's your name?")
end

function dlg_33_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/thekela_gillywump/_exp03/exp03_rgn_greater_faydark/scp/thekela/thekela001.mp3", "", "", 2313264132, 2462849563, Spawn)
	AddConversationOption(conversation, "What do you need?", "dlg_33_2")
	StartConversation(conversation, NPC, Spawn, "It's a pleasure to meet you, .. GetName(Spawn) .. . Say, if you're going to be helping Jenthis out, how'd you like to gather some ingredients for my cooking?")
end

function dlg_33_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/thekela_gillywump/_exp03/exp03_rgn_greater_faydark/scp/thekela/thekela002.mp3", "", "", 3411928341, 3381720539, Spawn)
	AddConversationOption(conversation, "Sure, I'll fetch some honey.", "dlg_33_3")
	StartConversation(conversation, NPC, Spawn, "Lots of stuff. Normally, Brodo does the restocking for me, but he's been preoccupied lately and he really hasn't been much help. If you're willing, I could really use some honey. East of Memorial Hill--which overlooks Sapling Spur Outpost just to the east--the Growzzat bixies keep lots of honey. Would you be dear and fetch me some?")
end

function dlg_33_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/exp03_questvo2/thekela_gillywump/_exp03/exp03_rgn_greater_faydark/scp/thekela/thekela003.mp3", "", "", 4020219974, 1441799321, Spawn)
	AddConversationOption(conversation, "I'll be back.", "dlg_33_4")
	StartConversation(conversation, NPC, Spawn, "Great! They store their honey on the trees in small hives. They shouldn't be too hard to find!")
end

