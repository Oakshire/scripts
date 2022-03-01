--[[
    Script Name    : Quests/ThunderingSteppes/GriffinEggForTheSteppesTowerStations.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.14 10:07:24
    Script Purpose : 

        Zone       : ThunderingSteppes
        Quest Giver: a griffin tamer (2490000)
        Preceded by: None
        Followed by: None
--]]

function Init(Quest)
	AddQuestStepHarvest(Quest, 1, "I'll have to look around the Thundering Steppes for griffin eggs. It's likely I'd find eggs near the prides that fly about the western steppes.", 1, 100, "I need to find a griffin egg for the griffin tower station trainer!", 2346, 6675)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 1, "I've found an egg for the griffin tower trainer.")

	AddQuestStepChat(Quest, 2, "Return the unhatched egg to the griffin trainer at the nearest griffin station.", 1, "Return the egg to the nearest griffin tower station quickly! If the egg cools, the only thing it'll be useful for is a really big omlette!", 11, 2490000)
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
