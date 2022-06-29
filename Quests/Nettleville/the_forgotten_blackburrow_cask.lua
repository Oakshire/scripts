--[[
    Script Name    : Quests/Nettleville/the_forgotten_blackburrow_cask.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.21 10:06:51
    Script Purpose : 

        Zone       : Nettleville
        Quest Giver: Nettleville_BlackburrowStout
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should search Starcrest Commune for the owner of the cask.", 1, "I should search Starcrest Commune for the owner of the cask.", 11, 2340025)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
    UpdateQuestZone(Quest,"Starcrest Commune")
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
	UpdateQuestStepDescription(Quest, 1, "Bartender Bermo of Starcrest Commune is the owner of the cask.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Bartender Bermo of Starcrest Commune is the owner of the cask.")

	UpdateQuestDescription(Quest, "The cask of Blackburrow Stout was en route to Bartender Bermo in Starcrest Commune. I informed him of its location. Bermo paid me to keep quiet about this. The Ironforge Exchange has outlawed Blackburrow Stout.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
