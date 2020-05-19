--[[
	Script Name	: SpawnScripts/ScaleYard/IssikDethyr.lua
	Script Purpose	: Issik Dethyr 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetMount(NPC, 6831)
	SetMountColor(NPC, 1, 1, 1, 255, 1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if GetQuestStep(Spawn, 185) == 1 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/issik001.mp3", "", "", 1583287184, 404701556, Spawn)
		AddConversationOption(conversation, "Malachi has organized his raiding party and awaits final orders to attack our enemies in the Commonlands.", "dlg_0_0")
		StartConversation(conversation, NPC, Spawn, "Speak or be killed. Quickly now, make your decision.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/quest_issik_away_civilian_b62b6605.mp3", "Away, civilian! The Militia has no time for lorungs like you!", "", 2421734461, 4002400859, Spawn)
	end

end

function dlg_0_0(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, 185, 1)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/issik002.mp3", "", "", 2023483562, 2147836902, Spawn)
	AddConversationOption(conversation, "Fine, goodbye.")
	AddConversationOption(conversation, "Your insolence shall not be forgotten. We shall meet again.")
	AddConversationOption(conversation, "Malachi will not be happy about this!")
	StartConversation(conversation, NPC, Spawn, "Well, good for him. Too bad I've already sent out another raiding party and won't need his services for some time... possibly a long time. Hmm. You may have noticed I stopped speaking to you... That's your cue to move along. Go ahead, you can do it. One foot in front of the other.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/issik_dethyr/fprt_hood06/quest_issik_away_civilian_b62b6605.mp3", "Away, civilian! The Militia has no time for lorungs like you!", "", 2421734461, 4002400859, Spawn)
--]]
