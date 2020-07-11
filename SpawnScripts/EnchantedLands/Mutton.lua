--[[
	Script Name	: SpawnScripts/EnchantedLands/Mutton.lua
	Script Purpose	: Mutton 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "", "Woof?", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "Woof! Woof!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "Woof! Woof! Woof!", "", 1689589577, 4560189, Spawn)
	else
	end

		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Good dog.  Don't bite me!", "dlg_1_1")
	StartConversation(conversation, NPC, Spawn, "Woof!")
	if convo==2 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Good dog.  Don't bite me!", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Woof!")
	end

	if convo==4 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Mutton? Where've you been?  Can you show me?", "dlg_4_1")
		AddConversationOption(conversation, "Good dog.  Don't bite me!")
		StartConversation(conversation, NPC, Spawn, "Woof!")
	end

	if convo==7 then
		PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Good dog.  Don't bite me!", "dlg_7_1")
		StartConversation(conversation, NPC, Spawn, "Woof!")
	end

end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Woof?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Woof! Woof!", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "Woof! Woof! Woof!", "", 1689589577, 4560189, Spawn)
--]]

