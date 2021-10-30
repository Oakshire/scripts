--[[
    Script Name    : Quests/TheCryptofBetrayal/crypt_jerky.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.29 09:10:27
    Script Purpose : 

        Zone       : TheCryptofBetrayal
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	SetQuestFeatherColor(Quest, 3)
	SetQuestRepeatable(Quest)
	AddQuestStepKill(Quest, 1, "Collect bats so I can make jerky.", 20, 100, "With enough bats I'll be able to make enough bat jerky to last me a while.", 140, 2010003, 2010035, 2010026)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've got another bat.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've got enough bats to where I can make my bat jerky.")
	UpdateQuestDescription(Quest, "I've got plenty of bats now.  These should last me for quite a while.")
	GiveQuestReward(Quest, Player)
	if HasItem(Player, 10570) then -- Pouch of Dried Bat Meat Item
	RemoveItem(Player, 10570)
	end
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

