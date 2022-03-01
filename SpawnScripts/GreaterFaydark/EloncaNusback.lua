--[[
	Script Name	: SpawnScripts/GreaterFaydark/EloncaNusback.lua
	Script Purpose	: Elonca Nusback <Liberation Squad>
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

		PlayFlavor(NPC, "elonca_nusback/_exp03/exp03_rgn_greater_faydark/elonca_nusback/elonca001.mp3", "", "", 1353203304, 503876671, Spawn)
	AddConversationOption(conversation, "Sorry. What are you doing here?", "dlg_1_1")
	AddConversationOption(conversation, "I'll leave you alone.")
	StartConversation(conversation, NPC, Spawn, "Don't give away our position! We've got some serious work to do 'ere!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "elonca_nusback/_exp03/exp03_rgn_greater_faydark/elonca_nusback/elonca002.mp3", "", "", 981351697, 2920342348, Spawn)
	AddConversationOption(conversation, "That sounds like a lot of work for just a handful of you.", "dlg_1_2")
	AddConversationOption(conversation, "I'll leave you to it.")
	StartConversation(conversation, NPC, Spawn, "We are liberators! Those nasty Crushbone orcs 'ave taken some of our kin hostage, and we aim to free 'em!")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "elonca_nusback/_exp03/exp03_rgn_greater_faydark/elonca_nusback/elonca003.mp3", "", "", 2424859748, 3864182443, Spawn)
	AddConversationOption(conversation, "How could I help you?", "dlg_1_3")
	AddConversationOption(conversation, "No thanks, shorty.")
	StartConversation(conversation, NPC, Spawn, "Aye, we 'ave our work cut out fer us. Say, someone like you would be a great 'elp in our fight against the orcs!")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "elonca_nusback/_exp03/exp03_rgn_greater_faydark/elonca_nusback/elonca004.mp3", "", "", 3150714366, 582904965, Spawn)
	AddConversationOption(conversation, "What kind of trophies?", "dlg_1_4")
	AddConversationOption(conversation, "Not interested.")
	StartConversation(conversation, NPC, Spawn, "In order to rescue our kin, we need the orcs demoralized. If you take trophies from their finest warriors, that will 'elp us wear 'em down!")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "elonca_nusback/_exp03/exp03_rgn_greater_faydark/elonca_nusback/elonca005.mp3", "", "", 3498749910, 2147058017, Spawn)
	AddConversationOption(conversation, "I'll do it.", "dlg_1_5")
	AddConversationOption(conversation, "Not my problem really.")
	StartConversation(conversation, NPC, Spawn, "Their centurions are always prancin' about with their fancy belts. If you collected a good number of 'em, that would show that they ain't so tough!")
end

