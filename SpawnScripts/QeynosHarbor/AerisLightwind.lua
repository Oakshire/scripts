--[[
	Script Name	: SpawnScripts/QeynosHarbor/AerisLightwind.lua
	Script Purpose	: Aeris Lightwind <Provisioner>
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

		PlayFlavor(NPC, "voiceover/english/merchant_aeris_lightwind/qey_harbor/aerislightwind000.mp3", "", "", 2050407066, 4101070387, Spawn)
		AddConversationOption(conversation, "Not right now, thanks.", "dlg_6_1")
	StartConversation(conversation, NPC, Spawn, "Look around? Freshest catch on the docks.")
	if convo==7 then
		PlayFlavor(NPC, "voiceover/english/merchant_aeris_lightwind/qey_harbor/aerislightwind000.mp3", "", "", 2050407066, 4101070387, Spawn)
		AddConversationOption(conversation, "Not right now, thanks.", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Look around? Freshest catch on the docks.")
	end

end

function dlg_7_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_aeris_lightwind/qey_harbor/aerislightwind000.mp3", "", "", 2050407066, 4101070387, Spawn)
		AddConversationOption(conversation, "Not right now, thanks.", "dlg_7_2")
	StartConversation(conversation, NPC, Spawn, "Look around? Freshest catch on the docks.")
end

