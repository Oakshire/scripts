--[[
	Script Name	: SpawnScripts/FrostfangSea/TadIronstein.lua
	Script Purpose	: Tad Ironstein 
	Script Author	: theFoof
	Script Date	: 2013.06.09
	Script Notes	:
--]]

local ReportSpine = 44

local NightmareOver = 73

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if GetQuestStep(Spawn, ReportSpine) == 1 or GetQuestStep(Spawn, NightmareOver) == 1 then
	    PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_001.mp3", "", "", 159212760, 893738328, Spawn)
	    AddConversationOption(conversation, GetName(Spawn) .. ", reporting for duty!", "Quest1Chat_1")
	    AddConversationOption(conversation, "Belka sent me.", "Quest1Chat_1")
	    AddConversationOption(conversation, "What can I do to help?", "Quest1Chat_1")
	    AddConversationOption(conversation, "I'm going to have a look around, first.  Goodbye.")
	    StartConversation(conversation, NPC, Spawn, "Oi!  We're in a heap of trouble.  It's about time we got some fresh blood to help stave off the Ry'Gorr offensive.")
	elseif HasCompletedQuest(Spawn, ReportSpine) then
		Quest1Chat_2(NPC, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_002.mp3", "", "", 767750494, 124592983, Spawn)
	AddConversationOption(conversation, "I prefer to stand.  What's going on?", "Quest1Chat_2")
	AddConversationOption(conversation, "Go ahead.  I'm listening.", "Quest1Chat_2")
	AddConversationOption(conversation, "I'm going to have a look around, first.  Goodbye.")
	StartConversation(conversation, NPC, Spawn, "I've heard good things about ye, " .. GetName(Spawn) .. ".  Cop a squat and let me fill ye in on the details of our predicament.")
end

function Quest1Chat_2(NPC, Spawn)
	if not HasCompletedQuest(Spawn, NightmareOver) then
		SetStepComplete(Spawn, NightmareOver, 1)
	end
	if not HasCompletedQuest(Spawn, ReportSpine) then
	    SetStepComplete(Spawn, ReportSpine, 1)
	end
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_003.mp3", "", "", 4232630025, 1474295833, Spawn)
	AddConversationOption(conversation, "Alright.  Anything else?", "Quest1Chat_3")
	AddConversationOption(conversation, "I'll see to it.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Hillfred Kinlock is the lass to talk to for your next assignment in tackling the Ry'Gorr that have been assaulting our camp.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_004.mp3", "", "", 2381720580, 2582728568, Spawn)
	AddConversationOption(conversation, "Alright.  Anything else?", "Quest1Chat_4")
	AddConversationOption(conversation, "I'll see to it.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "We're under siege from not just orcs, but blasted imps as well.  I understand Knut Orcbane is lookin' for adventurers willing to deal with the mischievous monsters.  He's looking for his sanity as well, so maybe ye can help him find that too.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_005.mp3", "", "", 520233498, 1846378100, Spawn)
	AddConversationOption(conversation, "Alright.  Anything else?", "Quest1Chat_5")
	AddConversationOption(conversation, "I'll see to it.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Thirin Veliumdelver is worried about the current state of our equipment, and I don't blame him.  Our gear is falling apart from extended use, so there's real reason to be worried.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_006.mp3", "", "", 678304878, 2445816043, Spawn)
	AddConversationOption(conversation, "Alright.  Anything else?", "Quest1Chat_6")
	AddConversationOption(conversation, "I'll see to it.  Goodbye!")
	StartConversation(conversation, NPC, Spawn, "Lastly, Odon Scourgeson thinks he's come up with a way to shroud the beach front in a whorl of mist to confuse the Ry'Gorr.  Sounds crazy to me, but I've always been a fan of the more direct hands-on approach.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "tad_ironstein/halas/cragged_spine/tad_ironstein_007.mp3", "", "", 3904075644, 3425628781, Spawn)
	AddConversationOption(conversation, "Glad to be here.")
	AddConversationOption(conversation, "I'll see what I can do to help.")
	StartConversation(conversation, NPC, Spawn, "That'll do, for starters.  Glad to have ye aboard, " .. GetName(Spawn) .. ".")
end