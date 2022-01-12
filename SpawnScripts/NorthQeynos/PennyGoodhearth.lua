--[[
	Script Name	: SpawnScripts/NorthQeynos/PennyGoodhearth.lua
	Script Purpose	: Penny Goodhearth 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
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

		PlayFlavor(NPC, "voiceover/english/penny_goodhearth/qey_north/pennygoodhearth.mp3", "", "", 3200414666, 3603496424, Spawn)
		AddConversationOption(conversation, "I'm sorry, I'll just get out of your way then.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "Shoo ... Shoo ... Out of my way. I'm so very late! If you keep pestering me, I'll never finish preparing Lord and Lady Ironforge's supper.")

	end



