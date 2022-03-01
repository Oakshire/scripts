--[[
	Script Name	: SpawnScripts/GreaterFaydark/Grum.lua
	Script Purpose	: Grum <Eater of Small Things>
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

		PlayFlavor(NPC, "grum/_exp03/exp03_rgn_greater_faydark/grum/grum_001.mp3", "", "", 2456014343, 373150177, Spawn)
	AddConversationOption(conversation, "Well what do you want?", "dlg_17_1")
	AddConversationOption(conversation, "No way. Stay away!")
	StartConversation(conversation, NPC, Spawn, "Oh I see you I am hungry bring me small things. My mouth not so big to eat big things.")
end

function dlg_17_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "grum/_exp03/exp03_rgn_greater_faydark/grum/grum_002.mp3", "", "", 2366675475, 910741448, Spawn)
	AddConversationOption(conversation, "Sure.", "dlg_17_2")
	AddConversationOption(conversation, "No way.")
	StartConversation(conversation, NPC, Spawn, "Spiders bring me spider legs I dip them in goop here make them taste smashing. Lots of legs if each spider has two, six legs you bring me many more right yes?")
end

function dlg_17_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "grum/_exp03/exp03_rgn_greater_faydark/grum/grum_003.mp3", "", "", 2187487488, 316668200, Spawn)
	AddConversationOption(conversation, "Yeah, I am going to get you some.", "dlg_17_3")
	StartConversation(conversation, NPC, Spawn, "Hungry! You bring snacks?")
end

