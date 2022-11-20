--[[
    Script Name    : Quests/Hallmark/path_of_the_cleric.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.19 05:11:14
    Script Purpose : 

        Zone       : Hallmark
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "I need to complete the trial.", 1, 100, "I must complete Aldalad's trial in order to become a cleric.", 11)
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
	UpdateQuestStepDescription(Quest, 1, "I've completed the trial.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've completed Aldalad's trial and become a cleric.")
	if GetClass(Player)== 11 then
	SetAdventureClass(Player,12)
    SendMessage(Player, "Congratulations! You are a Cleric.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Cleric.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
	end
	UpdateQuestDescription(Quest, "After a somewhat surreal dream, I have cemented my beliefs and become a true cleric.  I stride forth with a renewed faith and will prove my worth to those around me in my adventures to come.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end