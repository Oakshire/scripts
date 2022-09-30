--[[
    Script Name    : Quests/IsleofRefuge/cutlass_cleaning.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.04 07:09:27
    Script Purpose : 

        Zone       : IsleofRefuge
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I should find someone back at the outpost who can fix the cutlass up for me.", 1, "I should find someone back at the outpost who can fix the cutlass up for me.", 36, 3250058)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
      while HasItem(Player, 10149, 1) do
          RemoveItem(Player, 10149)
    end
    SendMessage(Player, "Your old salt encrusted cutlass has been placed in your quest satchel.")
end 

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "Mannus repaired the blade for me.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Mender Mannus was able to repair the blade as good as new.")

	UpdateQuestDescription(Quest, "Mender Mannus was able to repair the blade as good as new.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


