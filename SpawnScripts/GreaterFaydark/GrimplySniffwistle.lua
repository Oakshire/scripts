--[[
	Script Name	: SpawnScripts/GreaterFaydark/GrimplySniffwistle.lua
	Script Purpose	: Grimply Sniffwistle 
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

		PlayFlavor(NPC, "grimply_sniffwistle/_exp03/exp03_rgn_greater_faydark/grimply_sniffwistle/grimply_001.mp3", "", "", 1393243277, 1476468337, Spawn)
	AddConversationOption(conversation, "What are you doing out here?", "dlg_21_1")
	AddConversationOption(conversation, "Yeah you are small.")
	StartConversation(conversation, NPC, Spawn, "Everything here is so huge isn't it? I feel even smaller than normal. It's beautiful.")
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "grimply_sniffwistle/_exp03/exp03_rgn_greater_faydark/grimply_sniffwistle/grimply_002.mp3", "", "", 4190695975, 702857219, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help? ", "dlg_21_2")
	AddConversationOption(conversation, "Sounds like you need professional help.")
	StartConversation(conversation, NPC, Spawn, "Well I was... I mean I am an inventor, I make most marvelous things, or I will make them once I can get my thinker thinking.")
end

function dlg_21_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "grimply_sniffwistle/_exp03/exp03_rgn_greater_faydark/grimply_sniffwistle/grimply_003.mp3", "", "", 3838489501, 105443085, Spawn)
	AddConversationOption(conversation, "So... You need fresh cut treant wood?", "dlg_21_3")
	AddConversationOption(conversation, "Okay, sounds like you just need your space.")
	StartConversation(conversation, NPC, Spawn, "Well let's see, I was working on a woodle fandoogler, to bring me more fresh cut treant wood, but if I remember correctly it ended up just bringing back fish, so I pushed it off the cliff. If I wanted fish, I would make a fishing Fooper.")
end

function dlg_21_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "grimply_sniffwistle/_exp03/exp03_rgn_greater_faydark/grimply_sniffwistle/grimply_004.mp3", "", "", 2812110834, 1230803512, Spawn)
	AddConversationOption(conversation, "Treant chopping I go.", "dlg_21_4")
	StartConversation(conversation, NPC, Spawn, "Yes, fresh cut treant wood, thanks. You can stack it up over there when you bring it back. Don't just pick up any log off the ground though, go cut it off a tree yourself, that makes for better fires. As a matter of fact treants give the best smokey smell to just about anything. Oh and if you see my woodle fandoogler kick it for me would you?")
end

