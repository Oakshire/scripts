--[[
	Script Name	: SpawnScripts/SouthQeynos/TillianaSteamsieve.lua
	Script Purpose	: Tilliana Steamsieve <Conjuror Trainer>
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

		PlayFlavor(NPC, "tilliana_steamsieve/qey_south/trainer_conjuror001.mp3", "", "", 2213433936, 1054777117, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_9_1")
	StartConversation(conversation, NPC, Spawn, "Well, hello hello Ravelshian, welcome to the Concordium.  What can I do for you today?")
	if convo==10 then
		PlayFlavor(NPC, "tilliana_steamsieve/qey_south/trainer_conjuror001.mp3", "", "", 2213433936, 1054777117, Spawn)
		AddConversationOption(conversation, "Just looking around.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Well, hello hello Ravelshian, welcome to the Concordium.  What can I do for you today?")
	end

end

