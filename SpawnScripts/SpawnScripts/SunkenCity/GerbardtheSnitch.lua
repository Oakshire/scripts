--[[
	Script Name	: SpawnScripts/SunkenCity/GerbardtheSnitch.lua
	Script Purpose	: Gerbard the Snitch 
	Script Author	: neatz09
	Script Date	: 2018.12.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 387
function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
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
		PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch000.mp3", "", "", 2512842567, 445857936, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_3_1")
		AddConversationOption(conversation, "That sounds like something I'd rather stay out of.")
	StartConversation(conversation, NPC, Spawn, "Oh no! I did it again!  The boys back on the boat are gonna kill me!")
	if convo==5 then
		PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch000.mp3", "", "", 2512842567, 445857936, Spawn)
		AddConversationOption(conversation, "What happened?", "dlg_5_1")
		AddConversationOption(conversation, "That sounds like something I'd rather stay out of.")
		StartConversation(conversation, NPC, Spawn, "Oh no! I did it again!  The boys back on the boat are gonna kill me!")
	end

	if convo==8 then
		PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch000.mp3", "", "", 2512842567, 445857936, Spawn)
		AddConversationOption(conversation, "I've returned with the pirate coins.", "dlg_8_1")
		AddConversationOption(conversation, "That sounds like something I'd rather stay out of.")
		StartConversation(conversation, NPC, Spawn, "Oh no! I did it again!  The boys back on the boat are gonna kill me!")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch000.mp3", "", "", 2512842567, 445857936, Spawn)
		AddConversationOption(conversation, "I've returned with the pirate coins.", "dlg_15_1")
		AddConversationOption(conversation, "That sounds like something I'd rather stay out of.")
		StartConversation(conversation, NPC, Spawn, "Oh no! I did it again!  The boys back on the boat are gonna kill me!")
	end

end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch001.mp3", "", "", 2460257667, 2197101465, Spawn)
		AddConversationOption(conversation, "I'll do it, whats involved?", "dlg_3_2")
		AddConversationOption(conversation, "Not today, sorry.")
	StartConversation(conversation, NPC, Spawn, "I blew all my coins on a game of dice.  I just need a few more pirate coins to throw in, and I'll earn back my money in no time! Will you help me out? My crew will toss me overboard if they find out how much money I lost!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
OfferQuest(NPC, Spawn, QUEST_1)
	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch002.mp3", "", "", 4172245160, 2238267271, Spawn)
		AddConversationOption(conversation, "Thanks, I'll search out some pirate coins.", "dlg_3_3")
	StartConversation(conversation, NPC, Spawn, "Where do you think they come from? They're pirate coins!  Those undead buggers roam around where it's wet.  I'd go get them myself, but I gambled my sword away in a sure bet.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch001.mp3", "", "", 2460257667, 2197101465, Spawn)
		AddConversationOption(conversation, "I'll do it, whats involved?", "dlg_5_2")
		AddConversationOption(conversation, "Not today, sorry.")
	StartConversation(conversation, NPC, Spawn, "I blew all my coins on a game of dice.  I just need a few more pirate coins to throw in, and I'll earn back my money in no time! Will you help me out? My crew will toss me overboard if they find out how much money I lost!")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch002.mp3", "", "", 4172245160, 2238267271, Spawn)
		AddConversationOption(conversation, "Thanks, I'll search out some pirate coins.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Where do you think they come from? They're pirate coins!  Those undead buggers roam around where it's wet.  I'd go get them myself, but I gambled my sword away in a sure bet.")
end

function dlg_8_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch003.mp3", "", "", 1766615640, 492599183, Spawn)
		AddConversationOption(conversation, "Good luck.", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "You're a lifesaver!  Now it's time to win it all back.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/gerbard_the_snitch/fprt_adv01_sunken/gerbard_the_snitch003.mp3", "", "", 1766615640, 492599183, Spawn)
		AddConversationOption(conversation, "Good luck.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "You're a lifesaver!  Now it's time to win it all back.")
end

