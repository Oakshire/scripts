--[[
	Script Name		:	DesperatelySeekingMoths!.lua
	Script Purpose		:	
	Script Author		:	XionnaeEQ
	Script Date		:	6/11/2016
	Script Notes		:	

	Zone			:	Thundering Steppes
	Quest Giver		:	Elowys Laceleaf (2490013)
	Preceded by		:	Desperately Seeking Butterflies!
	Followed by		:	Desperately Seeking Ants!
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "I'm looking for a plain brown moth for Elowys Laceleaf.", 1, 100, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 1899, 10409)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've found a plain brown moth.")
	AddQuestStepChat(Quest, 2, "I need to take the moth to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 11, 10409)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've given the moth to Elowys.")
	AddQuestStepObtainItem(Quest, 3, "I'm looking for a spotted brown moth for Elowys Laceleaf.", 1, 100, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 1903, 13234)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I've found a spotted brown moth.")
	AddQuestStepObtainItem(Quest, 4, "I'm looking for a striped brown moth for Elowys Laceleaf.", 1, 100, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 1907, 13471)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I've found a striped brown moth.")
	AddQuestStepChat(Quest, 5, "I need to take this moth to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 11, 13471)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I've given the moth to Elowys.")
	AddQuestStepObtainItem(Quest, 6, "I'm looking for a spotted yellow butterfly for Elowys Laceleaf.", 1, 100, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 1830, 13265)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've found the butterfly.")
	AddQuestStepChat(Quest, 7, "I need to take this butterfly to Elowys Laceleaf on the docks of the Thundering Steppes.", 1, "I need to find some moths for Elowys Laceleaf in the Thundering Steppes.", 11, 13265)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
	SetCompleteFlag(Quest)
end


function Step7Complete(Quest, QuestGiver, Player)
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
	elseif Step == 7 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end