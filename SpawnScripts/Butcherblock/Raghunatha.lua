--[[
	Script Name	: SpawnScripts/ButcherblockMountains/Raghunatha.lua
	Script Purpose	: Raghunatha <Emissary of Gorowyn>
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SarnakSympathizerPart1 = 274

function spawn(NPC)
	ProvidesQuest(NPC, SarnakSympathizerPart1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, SarnakSympathizerPart1) == false and HasQuest(Spawn, SarnakSympathizerPart1) == false and CanReceiveQuest(Spawn, SarnakSympathizerPart1) == true then
		PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha001.mp3", "", "", 62910123, 2692407233, Spawn)
		AddConversationOption(conversation, "Indeed, I was wondering. Care to explain?", "dlg_1_1")
		AddConversationOption(conversation, "Not at all, actually.")
		StartConversation(conversation, NPC, Spawn, "Greetings, stranger. I'm sure you're wondering what a sarnak like myself is doing all the way here in the Butcherblock Mountains.")
	elseif GetQuestStep(Spawn, SarnakSympathizerPart1) == 1 then
		PlayFlavor(NPC, "", "Please return to me once you've completed all the Irontoe Dwarf Tasks", "thanks", 1689589577, 4560189, Spawn)
	elseif HasCompletedQuest(Spawn, SarnakSympathizerPart2) == true then
		PlayFlavor(NPC, "", "Thanks again for all your help!", "thanks", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha001.mp3", "", "", 62910123, 2692407233, Spawn)
	end
	
	if convo==6 then
		PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha009.mp3", "", "", 3098514065, 2686440714, Spawn)
		AddConversationOption(conversation, "I'm just glad I could help.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Friend, it's so very good to see you again. I've spoken with all the dwarves on the list I gave you. They've all said very kind things about your dedication to the tasks they've given you.")
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha002.mp3", "", "", 1071485609, 2454621762, Spawn)
	AddConversationOption(conversation, "Were the Haoaerans successful?", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "A small delegation of Gorwynian citizens have traveled across the Timorous Deep to enlist the help of the dwarves of Butcherblock and Kaladim. Our first concern was that the blasted Haoaerans would rouse the Kragploom aviaks into action and cause them to join their cause.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha003.mp3", "", "", 3690188667, 1562372666, Spawn)
	AddConversationOption(conversation, "Are the dwarves unwilling to help at all?", "dlg_1_3")
	StartConversation(conversation, NPC, Spawn, "So far, no. Our allies have prevented the two aviak tribes from conspiring with one another, though convincing the dwarves to assist us has proved more difficult than we originally anticipated.")
end

function dlg_1_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha004.mp3", "", "", 833410768, 1027249809, Spawn)
	AddConversationOption(conversation, "I'll help if I can. What's the problem?", "dlg_1_4")
	AddConversationOption(conversation, "Ah, good luck then!")
	StartConversation(conversation, NPC, Spawn, "Not exactly. The dwarves here are actually sympathetic to our plight. Afterall, they know firsthand what it's like to have an enemy encroach upon your ancestral lands.")
end

function dlg_1_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha005.mp3", "", "", 518757181, 1757436789, Spawn)
	AddConversationOption(conversation, "I can. Is there anything I can do to help?", "dlg_1_5")
	AddConversationOption(conversation, "Sorry to hear that. Well, I need to leave. Good-bye!")

	StartConversation(conversation, NPC, Spawn, "Simply put, it is a matter of resources. The dwarves here in this outpost are an extremely busy lot. As much as they would like to assist us, they need to take care of their own problems first. A most frustrating dilemma for our cause, I'm sure you can imagine.")
end

function dlg_1_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha006.mp3", "", "", 1066732182, 1623424378, Spawn)
	AddConversationOption(conversation, "Yes, I will help.", "GiveSarnakSympathizerPart1")
	StartConversation(conversation, NPC, Spawn, "You would be willing to assist us? Marvelous! Yes, please, I've taken it upon myself to assist the dwarves in their own problems in hope that with enough assistance, they would be able to return the favor. Would you be willing to speak with several of the dwarves around these lands, and help them in their duties?")
end

function dlg_1_12(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha007.mp3", "", "", 3396264823, 906309207, Spawn)
	AddConversationOption(conversation, "I'll begin at once!", "dlg_1_13")
	StartConversation(conversation, NPC, Spawn, "Thank you, friend, I'll do my best to make sure you're rewarded kindly. Now, let me write down the names of all the dwarves you'll need to speak with. Complete their tasks and then return to me. Time is of the essence, and the Haoaeran's attacks grow stronger every day.")
end

function dlg_6_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha010.mp3", "", "", 3327757984, 2621465746, Spawn)
		AddConversationOption(conversation, "Good to hear. Good-bye, Raghuntha.", "dlg_6_2")
	StartConversation(conversation, NPC, Spawn, "Indeed, you've helped both our causes tremendously. I'm happy to add that just this morning the dwarves here have agreed to lend both military and engineering support back to Gorowyn so we can finally gain the upper hand in our fight against the Haoaerans and drive them back whence they came!")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha002.mp3", "", "", 1071485609, 2454621762, Spawn)
		AddConversationOption(conversation, "Were the Haoaerans successful?", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "A small delegation of Gorwynian citizens have traveled across the Timorous Deep to enlist the help of the dwarves of Butcherblock and Kaladim. Our first concern was that the blasted Haoaerans would rouse the Kragploom aviaks into action and cause them to join their cause.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha003.mp3", "", "", 3690188667, 1562372666, Spawn)
		AddConversationOption(conversation, "Are the dwarves unwilling to help at all?", "dlg_10_3")
	StartConversation(conversation, NPC, Spawn, "So far, no. Our allies have prevented the two aviak tribes from conspiring with one another, though convincing the dwarves to assist us has proved more difficult than we originally anticipated.")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha004.mp3", "", "", 833410768, 1027249809, Spawn)
		AddConversationOption(conversation, "Then what's the problem?", "dlg_10_4")
	StartConversation(conversation, NPC, Spawn, "Not exactly. The dwarves here are actually sympathetic to our plight. Afterall, they know firsthand what it's like to have an enemy encroach upon your ancestral lands.")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha002.mp3", "", "", 1071485609, 2454621762, Spawn)
		AddConversationOption(conversation, "Were the Haoaerans successful?", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "A small delegation of Gorwynian citizens have traveled across the Timorous Deep to enlist the help of the dwarves of Butcherblock and Kaladim. Our first concern was that the blasted Haoaerans would rouse the Kragploom aviaks into action and cause them to join their cause.")
end

function dlg_14_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha003.mp3", "", "", 3690188667, 1562372666, Spawn)
		AddConversationOption(conversation, "Are the dwarves unwilling to help at all?", "dlg_14_3")
	StartConversation(conversation, NPC, Spawn, "So far, no. Our allies have prevented the two aviak tribes from conspiring with one another, though convincing the dwarves to assist us has proved more difficult than we originally anticipated.")
end

function dlg_14_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha004.mp3", "", "", 833410768, 1027249809, Spawn)
		AddConversationOption(conversation, "Then what's the problem?", "dlg_14_4")
	StartConversation(conversation, NPC, Spawn, "Not exactly. The dwarves here are actually sympathetic to our plight. Afterall, they know firsthand what it's like to have an enemy encroach upon your ancestral lands.")
end

function dlg_14_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha005.mp3", "", "", 518757181, 1757436789, Spawn)
		AddConversationOption(conversation, "I can. Is there anything I can do to help?", "dlg_14_5")
	StartConversation(conversation, NPC, Spawn, "Simply put, it is a matter of resources. The dwarves here in this outpost are an extremely busy lot. As much as they would like to assist us, they need to take care of their own problems first. A most frustrating dilemma for our cause, I'm sure you can imagine.")
end

function dlg_14_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha006.mp3", "", "", 1066732182, 1623424378, Spawn)
		AddConversationOption(conversation, "Yes, I will help.", "dlg_14_6")
	StartConversation(conversation, NPC, Spawn, "You would be willing to assist us? Marvelous! Yes, please, I've taken it upon myself to assist the dwarves in their own problems in hope that with enough assistance, they would be able to return the favor. Would you be willing to speak with several of the dwarves around these lands, and help them in their duties?")
end

function dlg_14_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "raghuntha/_exp03/exp03_rgn_butcherblock/sarnak_sympathizer/raghunatha/raghunatha007.mp3", "", "", 3396264823, 906309207, Spawn)
		AddConversationOption(conversation, "I'll begin at once!", "dlg_14_7")
	StartConversation(conversation, NPC, Spawn, "Thank you, friend, I'll do my best to make sure you're rewarded kindly. Now, let me write down the names of all the dwarves you'll need to speak with. Complete their tasks and then return to me. Time is of the essence, and the Haoaeran's attacks grow stronger every day.")
end

function GiveSarnakSympathizerPart1(NPC, Spawn)
	OfferQuest(NPC, Spawn, SarnakSympathizerPart1)
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Thanks again for all your help!", "thanks", 1689589577, 4560189, Spawn)
--]]

