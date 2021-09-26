--[[
    Script Name    : Quests/StarcrestCommune/batwing_crunchies_for_jerben.lua
    Script Author  : Premierio015
    Script Date    : 2021.09.25 10:09:52
    Script Purpose : 

        Zone       : StarcrestCommune, Qeynos Province District
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must gather the wings from five albino bats in the Caves.  The locals call these bats 'shale bats'.", 5, 30, "I need to gather up some bat wings for Jerben Sleepwell at the harbor in the Qeynos Province District.  The bat wings can be found in the Caves, reachable by mariner bell within the City of Qeynos.", 140, 1970014)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	PlayFlavor(NPC, "", "Ooh...I can't wait for some crunchies!", "manipulate", 1689589577, 4560189, Spawn)
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have gathered the bat wings that I needed.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've collected all five albino bat wings for Jerben Sleepwell at the harbor in the Qeynos Province District.")

	AddQuestStepChat(Quest, 2, "I need to speak with Jerben Sleepwell", 1, "I need to return to Jerben Sleepwell at the harbor in the Qeynos Province District.", 11, 2340030, 6600463)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Jerben Sleepwell.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Jerben Sleepwell regarding the bat wings.")

	UpdateQuestDescription(Quest, "Jerben Sleepwell was very pleased that he could once again have his favorite dish.  He paid me a little coin for my services, but better than that, I know he and his wife will be happy tonight!  The extra table is a welcome addition to my needed furniture collection as well.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
