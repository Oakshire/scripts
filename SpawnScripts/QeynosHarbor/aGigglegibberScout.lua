--[[
	Script Name	: SpawnScripts/QeynosHarbor/aGigglegibberScout.lua
	Script Purpose	: a Gigglegibber scout 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What do you know about the disappearance of Lord Bowsprite?", "dlg_2_1")
		AddConversationOption(conversation, "Of course you aren't.")
	StartConversation(conversation, NPC, Spawn, "Hellos, I'm just waiting here. Not doin' nothin' wrong. Nope, not me.")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Bowsprite... Not Bowspit.", "dlg_2_2")
		AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Lord who? I's never met no one named Bowspit.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Who said he was an elf? Fess up or I'll tell everyone the Gigglegibber gambling game is rigged!", "dlg_2_3")
		AddConversationOption(conversation, "Yeah, this is going to be like pulling teeth. Nevermind.")
	StartConversation(conversation, NPC, Spawn, "Oh... Well, um, I's still don't know nothing about that elf.")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Tell me where it is. You don't want me to ruin your business do you?", "dlg_2_4")
		AddConversationOption(conversation, "On second thought, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Noes, noes, you can't do that! Fine, I'll tells you everything. We have Bowspit at the super secret hideout, but you can't go there. No way.")
end

function dlg_2_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've been helpful, thanks.", "dlg_2_5")
	StartConversation(conversation, NPC, Spawn, "You gonna gets me in a lot of trouble, you know. I'll tells you, but I don't exactly remember where it is. All I remember is the entrance is at the bottom of the water, under the docks, where the halfies and fairies play. We all haves to take the boat to get there. That's all I'm telling you! Now goes away.")
end

