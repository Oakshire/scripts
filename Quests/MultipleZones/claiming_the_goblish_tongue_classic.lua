--[[
    Script Name    : Quests/MultipleZones/claiming_the_goblish_tongue_classic.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.29 02:05:36
    Script Purpose : 
	Script Notes	:	CLASSIC Version of quest.  Gives Studied version of item that actually counts for update.

	Zone			:	Language
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepObtainItem(Quest, 1, "Hunt goblins of Norrath for territory markers to study.", 7, 100, "I must collect and study more territory markers from the goblins of Norrath to learn the goblin language.", 417, 13528)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		if HasItem(Player, 7832) then
			RemoveItem(Player, 7832,1)
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
	UpdateQuestStepDescription(Quest, 1, "I have a studied a goblin territory marker.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have learned Goblish, language of the goblin clans.")

if not HasLanguage(Player,20) then
	AddLanguage(Player, 20)
	SendMessage(Player, "You have learned the basics of the Goblish language.", "White")
end

	UpdateQuestDescription(Quest, "I have studied a great amount of territory markers written in both Norrathian and the goblin language. I now understand Goblish.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

