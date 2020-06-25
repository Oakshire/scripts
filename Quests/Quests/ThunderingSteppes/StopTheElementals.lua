--[[
    Script Name    : Quests/ThunderingSteppes/StopTheElementals.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.09 01:07:13
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: N/A
        Preceded by: The Gnoll Cave
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Locate the source of the released fire elementals.", 1, 100, "If Tish's magical equipment caused this, then I should find the source to recover her property.", 11, 5940005)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I have found what appears to be Tish's lost equipment.")

	AddQuestStepChat(Quest, 2, "Return the equipment to Tish Tickers.", 1, "The Rampaging Elemental was carrying some strange arcane equipment. I should bring this to Tish in the Thundering Steppes.", 11, 2490042)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
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
	end
end