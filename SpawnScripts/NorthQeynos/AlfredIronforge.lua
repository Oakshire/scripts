--[[
	Script Name	: SpawnScripts/NorthQeynos/AlfredIronforge.lua
	Script Purpose	: Alfred Ironforge <Work Orders>
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

	local choice = math.random(1,0)

	if choice == 1 then
	else
	end

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll work towards that end then.", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "I'm sorry, until you have chosen a specialty in your craft I do not have any work orders for you.  Come see me when you're more practiced in your trade.")
	if convo==29 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am not really interested in a job right now.")
		StartConversation(conversation, NPC, Spawn, "A Woodworker is rarely without demand for work.  We have several work orders which we could use some help with. If you're willing, just tell me what type of order you'd be able to assist with. When you're ready to begin, just take the invoice from the work order clipboard or work order desk.")
	end

end

