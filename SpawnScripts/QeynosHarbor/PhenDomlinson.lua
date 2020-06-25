--[[
	Script Name	: SpawnScripts/QeynosHarbor/PhenDomlinson.lua
	Script Purpose	: Phen Domlinson <Bowyer>
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

		PlayFlavor(NPC, "voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson000.mp3", "", "", 3656550620, 1100622613, Spawn)
		AddConversationOption(conversation, "Every week? That's not fresh. No thanks.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Fresh supplies every week! Step up and see for yourself.")
	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson000.mp3", "", "", 3656550620, 1100622613, Spawn)
		AddConversationOption(conversation, "Every week? That's not fresh. No thanks.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Fresh supplies every week! Step up and see for yourself.")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson000.mp3", "", "", 3656550620, 1100622613, Spawn)
		AddConversationOption(conversation, "Every week? That's not fresh. No thanks.", "dlg_16_1")
		StartConversation(conversation, NPC, Spawn, "Fresh supplies every week! Step up and see for yourself.")
	end

	if convo==17 then
		PlayFlavor(NPC, "voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson000.mp3", "", "", 3656550620, 1100622613, Spawn)
		AddConversationOption(conversation, "Every week? That's not fresh. No thanks.", "dlg_17_1")
		StartConversation(conversation, NPC, Spawn, "Fresh supplies every week! Step up and see for yourself.")
	end

end

