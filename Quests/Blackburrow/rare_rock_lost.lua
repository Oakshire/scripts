--[[
    Script Name    : Quests/Blackburrow/rare_rock_lost.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 08:07:48
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Recover red rock shards", 1, 30, "I need to find the rock samples somewhere in the mines of Blackburrow.  There is a good chance that the miners and excavators might already have them.", 1121,  170010, 170029)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		local conversation = CreateConversation()
		PlayFlavor(QuestGiver, "voiceover/english/geologist_fribden/blackburrow/geologist_fribden007.mp3", "", "", 458349527, 2957854009, Player)
			AddConversationOption(conversation, "I'll be back when I've recovered the items.")
	StartConversation(conversation, QuestGiver, Player, "Of course, I'll compensate you for your efforts.  I'll write down in your journal what I need recovered.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've recovered the red rock shards")

	AddQuestStepKill(Quest, 2, "Recover black rock shards", 1, 30, "I need to find the rock samples somewhere in the mines of Blackburrow.  There is a good chance that the miners and excavators might already have them.", 1124, 170010, 170029)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've recovered the black rock shards")

	AddQuestStepKill(Quest, 3, "Recover green rock shards", 1, 30, "I need to find the rock samples somewhere in the mines of Blackburrow.  There is a good chance that the miners and excavators might already have them.", 1139, 170010, 170029)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've recovered the green rock shards")

	AddQuestStepKill(Quest, 4, "Recover crystalline rock shards", 1, 30, "I need to find the rock samples somewhere in the mines of Blackburrow.  There is a good chance that the miners and excavators might already have them.", 1140, 170010, 170029)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've recovered the crystalline rock shards")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've recovered all of the rock samples Fribden had lost.  I should return them to him now.")

	AddQuestStepChat(Quest, 5, "Return rock samples to Fribden", 1, "I've recovered the rock samples and should return them to geologist Fribden.", 11, 170012)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I gave Fribden his lost rock samples ")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've returned all of the lost rock samples to geologist Fribden.")

	UpdateQuestDescription(Quest, "I was able to recover all of the lost rock samples for geologist Fribden.  He was very pleased with my efforts and I was well rewarded.")
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
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
