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
require "SpawnScripts/Generic/DialogModule"

local GEOLOGIST_QUARDIFLE_ID = 2380036

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "Find a mine in the Caves to obtain a windspirit crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1159, 58.11, 2.93, -119.94,826)
	AddQuestStepZoneLoc(Quest, 2, "Find a mine in the Caves to obtain an elddar spark crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1168, 66.73, 12.41, -70.69,826)
	AddQuestStepZoneLoc(Quest, 3, "Find a mine in the Caves to obtain a prexus tear crystal sample.", 20, "I need to visit three mines in the Caves to gather crystal samples.", 1177, -49.35, 16.59, -133.75,826)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
    UpdateQuestZone(Quest,"Caves")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	Dialog.New(QuestGiver, Player)
	Dialog.AddDialog("Great! You'll find some unexplored caves in this area. To get there, ring one of the dock bells. Once you arrive, seek out intricate areas of the caves. Bring me back some unique rock samples and I'll be happy!")
	Dialog.AddVoiceover("voiceover/english/geologist_quardifle/qey_village06/geologistquardifle003.mp3", 3141164092, 1027825871)
    PlayFlavor(QuestGiver, "", "", "smile", 0, 0, Player)
--	Dialog.AddLanguage(6)
	Dialog.AddOption("Alright, I'll see what I can find!")
	Dialog.Start()
	end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a windpsirit sample.")
    QuestCheck(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I found an elddar spark crystal formation.")
    QuestCheck(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I found a prexus tear sample.")
    QuestCheck(Quest, QuestGiver, Player)
end

function QuestCheck(Quest, QuestGiver, Player)
if QuestStepIsComplete(Player,504,1) ==true and QuestStepIsComplete(Player,504,2) ==true and QuestStepIsComplete(Player,504,3) ==true then
	UpdateQuestTaskGroupDescription(Quest, 1, "I gathered the three samples from the different parts of the caves.")
    UpdateQuestZone(Quest, "Baubbleshire")
	AddQuestStepChat(Quest, 4, "I need to speak with Geologist Quardifle.", 1, "I need to give the samples I gathered to Geologist Quardifle.", 11, GEOLOGIST_QUARDIFLE_ID)
	AddQuestStepCompleteAction(Quest, 4, "QuestComplete")
end
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