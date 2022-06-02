--[[
    Script Name    : Quests/MultipleZones/words_of_a_giant.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 04:06:59
    Script Purpose : 

        Zone       : MultipleZones
        Quest Giver: a Giant Idol
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt giants to find giant idols to study.", 5, 100, "I must hunt for more giant idols on giants of Norrath. I can study the runes on the idols to get closer to understanding the foundation of all giant languages.", 1214,13527)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 7671) then
			RemoveItem(Player, 7671,1)
		end
	end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have studied giant runes on the idol.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned the basic foundation of all giant languages, Krombral the hill giant language.")
	AddLanguage(Player, 25)
	SendMessage(Player, "You have learned the basics of the Krombral language.", "White")
	UpdateQuestDescription(Quest, "I studied a number of runes on giant idols and now understand the foundation of all the giant languages, Krombral.  <br>")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
