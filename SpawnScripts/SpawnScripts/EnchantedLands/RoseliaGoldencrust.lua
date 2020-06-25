--[[
	Script Name	: SpawnScripts/EnchantedLands/RoseliaGoldencrust.lua
	Script Purpose	: Roselia Goldencrust <Pie Maker>
	Script Author	: Cynnar
	Script Date	: 2015.02.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
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

	PlayFlavor(NPC, "roselia_goldencrust/_exp03/deity/bristlebane/roselia/roselia_goldencrust004.mp3", "", "", 925124071, 4075374228, Spawn)
	AddConversationOption(conversation, "How's business?", "dlg_0_1")
	AddConversationOption(conversation, "Nevermind.")
	StartConversation(conversation, NPC, Spawn, "Yes dear? How may I help you?")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "roselia_goldencrust/_exp03/deity/bristlebane/roselia/roselia_goldencrust005.mp3", "", "", 1048944955, 1278695573, Spawn)
	AddConversationOption(conversation, "How do you know?", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Oh... I suppose it could be better. This location is not exactly ideal. Most of the people passing through here are adventurers like yourself who don't seem too interested in buying pies. I get along well enough I suppose. What's important is that I'm back here in the Misty Thicket and I'm sure we'll be able to wrestle our homeland away from the grips of the foul evil that has come to plague these lands.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "roselia_goldencrust/_exp03/deity/bristlebane/roselia/roselia_goldencrust006.mp3", "", "", 3761071007, 78243092, Spawn)
		AddConversationOption(conversation, "Indeed. We shall see!")
	StartConversation(conversation, NPC, Spawn, "Well, with the return of Bristlebane, it's a sure sign that now is the time for us to finally take back our homeland.")
end

