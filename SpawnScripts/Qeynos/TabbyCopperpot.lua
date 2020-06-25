--[[
	Script Name	: SpawnScripts/SouthQeynos/TabbyCopperpot.lua
	Script Purpose	: Tabby Copperpot <Provisioner>
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

		PlayFlavor(NPC, "voiceover/english/merchant_tabby_copperpot/qey_south/tabbycopperpot000.mp3", "", "", 3975328823, 1035271851, Spawn)
		AddConversationOption(conversation, "I am just browsing. ", "dlg_3_1")
	StartConversation(conversation, NPC, Spawn, "I have many baked goods that would be sure to tickle your taste buds and satisfy your tummy.")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/merchant_tabby_copperpot/qey_south/tabbycopperpot000.mp3", "", "", 3975328823, 1035271851, Spawn)
		AddConversationOption(conversation, "I am just browsing. ", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "I have many baked goods that would be sure to tickle your taste buds and satisfy your tummy.")
	end

	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/merchant_tabby_copperpot/qey_south/tabbycopperpot000.mp3", "", "", 3975328823, 1035271851, Spawn)
		AddConversationOption(conversation, "I am just browsing. ", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "I have many baked goods that would be sure to tickle your taste buds and satisfy your tummy.")
	end

end

