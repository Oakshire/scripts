--[[
	Script Name	: SpawnScripts/ButcherblockMountains/GrissBrumbaugh.lua
	Script Purpose	: Griss Brumbaugh <Irontoe Brigade>
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SarnakSympathizerPart1 = 274
local DarkTides = 275


function spawn(NPC)
	ProvidesQuest(NPC, DarkTides)
	MovementLoopAddLocation(NPC, 683.90, 24.00, 604.82, 2, 5)
    MovementLoopAddLocation(NPC, 675.10, 24.00, 600.29, 2, 5)
    MovementLoopAddLocation(NPC, 684.99, 24.00, 594.37, 2, 5)
    MovementLoopAddLocation(NPC, 680.69, 24.00, 594.31, 2, 5)
    MovementLoopAddLocation(NPC, 684.62, 24.00, 596.14, 2, 5)
    MovementLoopAddLocation(NPC, 679.45, 24.00, 597.47, 2, 5)
    MovementLoopAddLocation(NPC, 685.68, 24.00, 593.50, 2, 5)
    MovementLoopAddLocation(NPC, 679.07, 24.00, 601.21, 2, 5)
	
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, SarnakSympathizerPart1) == true and GetQuestStep(Spawn, SarnakSympathizerPart1) == 1 then
		SetStepComplete(Spawn, SarnakSympathizerPart1, 1)
		PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh001.mp3", "", "", 3709174333, 649188758, Spawn)
		AddConversationOption(conversation, "Yes, I've agreed to help your cause.", "dlg_16_1")
		AddConversationOption(conversation, "Sorry, wrong person.")
		StartConversation(conversation, NPC, Spawn, "Aye, you must be the person Raghuntha told me about. Is this true?")
	elseif HasCompletedQuest(Spawn, DarkTides) == false and HasQuest(Spawn, DarkTides) == false and CanReceiveQuest(Spawn, DarkTides) == true then
		PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh001.mp3", "", "", 3709174333, 649188758, Spawn)
		AddConversationOption(conversation, "Yes, I've agreed to help your cause.", "dlg_16_1")
		AddConversationOption(conversation, "Sorry, wrong person.")
		StartConversation(conversation, NPC, Spawn, "Aye, you must be the person Raghuntha told me about. Is this true?")
	elseif GetQuestStep(Spawn, DarkTides) == 1 then
		PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh001.mp3", "", "", 3709174333, 649188758, Spawn)
		AddConversationOption(conversation, "Not yet.", "dlg_Step1_cont")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Have you completed your task?")
	elseif GetQuestStep(Spawn, DarkTides) == 2 then
		PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh008.mp3", "", "", 1631651215, 3306624777, Spawn)
		AddConversationOption(conversation, "Yes, I have slain several Tidesylph ritualists.", "dlg_5_1")
		StartConversation(conversation, NPC, Spawn, "Welcome back. Have you completed your task?")
	elseif HasCompletedQuest(Spawn, DarkTides) == true then
		PlayFlavor(NPC, "", "Thanks again for the help with the Tidesylph ritualists! Now, go find Grimshaw Packwright at East Fort Irontoe and see if he still needs help.", "", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "Hail? Where I come from you simply say, 'Hello' to a passing stranger.", "", 1689589577, 4560189, Spawn)
	end



end

function dlg_5_1(NPC, Spawn)
	SetStepComplete(Spawn, DarkTides, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh009.mp3", "", "", 5065708, 712148895, Spawn)
		AddConversationOption(conversation, "Thanks, who should I speak with now?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Excellent. Thanks for the help. I'll be sure to pass along the word that you've done your part.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh010.mp3", "", "", 1757082804, 2660421525, Spawn)
		AddConversationOption(conversation, "Alright, good-bye!", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "Go find Grimshaw Packwright. He should be somewhere in East Fort Irontoe. I'm certain he'll have something you can assist him with.")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh002.mp3", "", "", 3374372564, 3071968430, Spawn)
		AddConversationOption(conversation, "Alright, what shall you have me do?", "dlg_16_2")
	StartConversation(conversation, NPC, Spawn, "Good, good. Let's get started right away.")
end

function dlg_16_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh003.mp3", "", "", 174914764, 48692594, Spawn)
		AddConversationOption(conversation, "What do you mean?", "dlg_16_3")
	StartConversation(conversation, NPC, Spawn, "If it's not the Yarpsnals, it's the Krulkiels. If it's not them it's the Muckflicks. Oh, but now apparently the Tidesylphs are getting out of hand.")
end

function dlg_16_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh004.mp3", "", "", 1048101023, 1626003091, Spawn)
		AddConversationOption(conversation, "Go on.", "dlg_16_4")
	StartConversation(conversation, NPC, Spawn, "We normally don't have too many problems involving the Tidesylph sirens. Their constant fight with the aqua goblins keep them more than occupied.")
end

function dlg_16_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh005.mp3", "", "", 906540546, 3167837346, Spawn)
		AddConversationOption(conversation, "Sounds like necromancy.", "dlg_16_5")
	StartConversation(conversation, NPC, Spawn, "However, something strange has been seen more recently. Zombies and skeletons in the water and the constant stench of death wafting in over the normally refreshing coastal air.")
end

function dlg_16_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh006.mp3", "", "", 1578749521, 2367042954, Spawn)
		AddConversationOption(conversation, "So what should we do?", "GiveDarkTides")
	StartConversation(conversation, NPC, Spawn, "Aye, I'm afraid the taint of Bertoxxulous may have touched some of the Tidesylph sirens and turned their interests towards necromancy as a way to combat the aqua goblins.")
end


function dlg_Step1_cont(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "griss_brumbaugh/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/griss_brumbaugh/griss_brumbaugh007.mp3", "", "", 1790400537, 2286410199, Spawn)
	StartConversation(conversation, NPC, Spawn, "Return to me once you've finished your current task.")
end

function GiveDarkTides(NPC, Spawn)
	OfferQuest(NPC, Spawn, DarkTides)
end
--[[ raw_conversations
	PlayFlavor(NPC, "", "Hail? Where I come from you simply say, 'Hello' to a passing stranger.", "", 1689589577, 4560189, Spawn)
--]]

