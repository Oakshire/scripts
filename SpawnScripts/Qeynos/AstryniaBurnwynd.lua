--[[
	Script Name	: SpawnScripts/SouthQeynos/AstryniaBurnwynd.lua
	Script Purpose	: Astrynia Burnwynd <Wizard Trainer>
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
		AddConversationOption(conversation, "Do you have any advice for a fellow wizard?", "dlg_3_1")
		AddConversationOption(conversation, "It is, isn't it?  Good day.")
	StartConversation(conversation, NPC, Spawn, "Good day to you, fellow student of wizardry.  It's amazing to see how many of us have talents for the arcane.")
	if convo==21 then
		PlayFlavor(NPC, "felion_shadoweater/qey_south/trainer_wizard001.mp3", "", "", 4048173540, 1288632814, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_21_1")
		StartConversation(conversation, NPC, Spawn, "Greetings Ravelshian, what brings you to the Concordium?")
	end

end

