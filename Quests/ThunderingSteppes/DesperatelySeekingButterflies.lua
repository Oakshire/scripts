--[[
	Script Name    : Quests/ThunderingSteppes/DesperatelySeekingButterflies.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.30 04:07:06
    Script Purpose : 

	Zone			:	Thundering Steppes
	Quest Giver		:	Elowys Laceleaf (2490013)
	Preceded by		:	None
	Followed by		:	Desperately Seeking Moths!
--]]

function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I'm looking for a striped blue butterfly for Elowys Laceleaf.", 1, 100, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 1833, 13464)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a striped blue butterfly.")
	AddQuestStepChat(Quest, 2, "I need to take this butterfly to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 11, 2490013)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given the butterfly to Elowys.")
	AddQuestStepObtainItem(Quest, 3, "I'm looking for a striped violet butterfly for Elowys Laceleaf.", 1, 100, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 1836, 13494)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a striped violet butterfly.")
	AddQuestStepChat(Quest, 4, "I need to take this butterfly to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 11, 2490013)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've given the butterfly to Elowys.")
	AddQuestStepObtainItem(Quest, 5, "I'm looking for a spotted yellow butterfly for Elowys Laceleaf.", 1, 100, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 1830, 13265)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've found the butterfly.")
	AddQuestStepChat(Quest, 6, "I need to take this butterfly to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some butterflies for Elowys Laceleaf in the Thundering Steppes.", 11, 2490013)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
	SetCompleteFlag(Quest)
end

function Step6Complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	end
end