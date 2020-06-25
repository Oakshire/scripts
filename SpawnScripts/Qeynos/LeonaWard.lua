--[[
	Script Name	: SpawnScripts/SouthQeynos/LeonaWard.lua
	Script Purpose	: Leona Ward <Tailor>
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
		AddConversationOption(conversation, "Sorry, but I don't have time to shop right now.", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "Welcome, traveler. Welcome to my shop.  Please, take a look around!")
	if convo==5 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sorry, but I don't have time to shop right now.", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Welcome, traveler. Welcome to my shop.  Please, take a look around!")
	end

end

