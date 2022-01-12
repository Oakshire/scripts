--[[
	Script Name	: SpawnScripts/NorthQeynos/LillyIronforge.lua
	Script Purpose	: Lilly Ironforge 
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

		PlayFlavor(NPC, "voiceover/english/lilly_ironforge/qey_north/lillyironforge.mp3", "", "", 1866795751, 1237890052, Spawn)
		AddConversationOption(conversation, "I just might do that.  Enjoy the performance!", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "Oh, lovely! Gray's performance has started! I've no time to talk, but go find my sister, Laura. She loves to chat. Good day now.")
	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/lilly_ironforge/qey_north/lillyironforge.mp3", "", "", 1866795751, 1237890052, Spawn)
		AddConversationOption(conversation, "I just might do that.  Enjoy the performance!", "dlg_4_1")
		StartConversation(conversation, NPC, Spawn, "Oh, lovely! Gray's performance has started! I've no time to talk, but go find my sister, Laura. She loves to chat. Good day now.")
	end

end

