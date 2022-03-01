--[[
	Script Name	: SpawnScripts/Darklight/DanyaHalfmoon.lua
	Script Purpose	: Danya Halfmoon 
	Script Author	: John Adams Updated by Cynnar
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SableveinRubble = 137
local SealingTheRift = 122

function spawn(NPC)
	ProvidesQuest(NPC, SableveinRubble)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, SealingTheRift) then
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/quest/hates_envy/qst_danya_toolow_d63cbe27.mp3", "", "", 1007828063, 3522254640, Spawn)
		StartConversation(conversation, NPC, Spawn, "I'm a little tense, perhaps you should leave me be.")
	elseif HasCompletedQuest(Spawn, SableveinRubble) then
	    --
	elseif not HasQuest(Spawn, SableveinRubble) then
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya000.mp3", "", "", 3154437003, 176778633, Spawn)
		AddConversationOption(conversation, "Yes.", "QuestChat_0_1")
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "What do you need? Just looking for a job?")
	elseif HasQuest(Spawn, SableveinRubble) and GetQuestStep(Spawn, SableveinRubble) == 1 then
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya006.mp3", "", "", 2899629615, 2055968822, Spawn)
		AddConversationOption(conversation, "No.")
		StartConversation(conversation, NPC, Spawn, "I am eager to work, have you brought the ore?")
	elseif HasQuest(Spawn, SableveinRubble) and GetQuestStep(Spawn, SableveinRubble) == 2 then
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya006.mp3", "", "", 2899629615, 2055968822, Spawn)
		AddConversationOption(conversation, "Yes, here you are.", "QuestChat_1_0")
		StartConversation(conversation, NPC, Spawn, "I am eager to work, have you brought the ore?")
	else
		PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/quest/hates_envy/qst_danya_done_ba2066a8.mp3", "", "", 2678058007, 1352299031, Spawn)
		StartConversation(conversation, NPC, Spawn, "You know, one of the reasons I asked you to get me ore is so I can get some work done!")
	end
end

function QuestChat_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya003.mp3", "", "", 470214479, 1083810129, Spawn)
	AddConversationOption(conversation, "You want ore from the mine.", "QuestChat_0_2")
	StartConversation(conversation, NPC, Spawn, "I haven't been able to get the ore I need ever since the elementals pushed the miners out of Sablevein Tear. I'm sure you see where this is going.")
end

function QuestChat_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya004.mp3", "", "", 3325647670, 962149852, Spawn)
	AddConversationOption(conversation, "I can get it.", "OfferQuest1")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Bingo. The ore is mixed in with other rocks and bits of earth within the cave. Bring me some of the Sablevein rubble from the cave and I can refine the ore in it and turn it into something workable.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, SableveinRubble)
end

function QuestChat_1_0(NPC, Spawn)
	SetStepComplete(Spawn, SableveinRubble, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/danya_halfmoon/darklight_wood/hates_envy/danya/danya007.mp3", "", "", 2771597308, 3920757098, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Finally! You have my thanks, and the thanks of everyone who's had to deal with me in the past few days.")
end