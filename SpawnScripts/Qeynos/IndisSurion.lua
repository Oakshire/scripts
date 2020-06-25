--[[
	Script Name	: SpawnScripts/SouthQeynos/IndisSurion.lua
	Script Purpose	: Indis Surion <Sage>
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
		AddConversationOption(conversation, "Thanks for the information.  I just might do that.", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Search for the relics of the past Age of Turmoil.  Their discovery will gain you great power and prestige!")
	if convo==18 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Thanks for the information, I just might do that.", "dlg_18_1")
		StartConversation(conversation, NPC, Spawn, "Search for the relics of the past Age of Turmoil.  Their discovery will gain you great power and prestige!")
	end

end

