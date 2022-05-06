--[[
	Script Name		:	GatheringRockSamples.lua
	Script Purpose	:	Handles the quest, "Gathering Rock Samples"
	Script Author	:	Shatou
	Script Date		:	1/6/2020
	Script Notes	:	Updated quest accept dialog - 1/20/2022 Dorbin --  NEEDS Updated to interactions with stones in the Caves.

	Zone			:	Baubbleshire
	Quest Giver		:	Geologist Quardifle
	Preceded by		:	None
	Followed by		:	None
--]]

local GEOLOGIST_QUARDIFLE_ID = 2380036

function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Find a mine in the Caves to obtain a windspirit crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1159, 58.11, 2.93, -119.94)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	UpdateQuestZone(Quest, "The Caves")
	PlayFlavor(QuestGiver, "voiceover/english/geologist_quardifle/qey_village06/geologistquardifle003.mp3", "", "", 3141164092, 1027825871, Player)
	AddConversationOption(conversation, "Alright. I'll see what I can find!")
	StartConversation(conversation, QuestGiver, Player, "Great! You'll find that these caves are largely unexplored. Seek out intricate areas of these caves and bring me back some unique rock samples and I'll be happy!")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a windpsirit sample.")

	AddQuestStepLocation(Quest, 2, "Find a mine in the Caves to obtain an elddar spark crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1168, 66.73, 12.41, -70.69)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found an elddar spark crystal formation.")

	AddQuestStepLocation(Quest, 3, "Find a mine in the Caves to obtain a prexus tear crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1177, -49.35, 16.59, -133.75)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found a prexus tear sample.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered the three samples from the different parts of the caves.")
    
    UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 4, "I need to speak with Geologist Quardifle.", 1, "I need to give the samples I gathered to Geologist Quardifle.", 11, GEOLOGIST_QUARDIFLE_ID)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 4, "I spoke with Geologist Quardifle.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I gave the samples I gathered to Geologist Quardifle.")

	UpdateQuestDescription(Quest, "The caves are actually quite amazing.  I'm glad that Quardifle had me go investigate them and gather the samples.  There are all sorts of underground life in there as well; bats, snakes, spiders, and even living rock formations. ")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end