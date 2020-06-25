--[[
	Script Name	: Quests/FrostfangSea/a_fine_halasian_welcome.lua
	Script Purpose	: Handles the quest "A Fine Halasian Welcome"
	Script Author	: Sylva1n (updated by theFoof)
	Script Date	: 2011.10.23  (2013.5.2)

        Zone            : Frostfang Sea
        Quest Giver     : Galinda Goodfaith
        Preceded by     : None
        Followed by     : Stonefist's Art of Combat
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Seek out Yasha Redblade.", 1, "I have been asked to report to Yasha Redblade in the broken ship's hull to the northeast of Galinda Goodfaith on the Pilgrims' Landing.", 0, 4700005)
	AddQuestStepCompleteAction(Quest, 1, "quest_complete")
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function quest_complete(Quest, QuestGiver, Player)
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		quest_complete(Quest, QuestGiver, Player)
	end
end