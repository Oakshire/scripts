--[[
	Script Name	: Quests/Darklight/wanted_ithari_kxyrae.lua
	Script Purpose	: Handles the quest, "Wanted: Ithari K'Xyrae"
	Script Author	: Scatman
	Script Date	: 2009.02.01
	
	Zone       : Darklight Wood
	Quest Giver: Wanted: Ithari K'Xyrae poster
	Preceded by: None
	Followed by: None
--]]


function Init(Quest)
	-- Blooddrop Loop
	-- Morning Dew Trinket
	-- Granite Pounded Helm
	-- Heavy Plated Shield
	-- Faded Wraps


	-- Head of Ithari K'Xyrae
	AddQuestStepObtainItem(Quest, 1,  "I need the head of Ithari K'Xyrae.", 1, 100,  ".", 2459,  5622)

	AddQuestStepCompleteAction(Quest, 1, "step1_complete_killedIthari")

end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function step1_complete_killedIthari(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have Ithari K'Xyrae's head.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have Ithari K'Xyrae's head.")
	
	AddQuestStepChat(Quest, 2, "I need to bring Ithari K'Xyrae's head to Sselnyl Do'Zylth.", 1, ".", 0, 340087)
	AddQuestStepCompleteAction(Quest, 2, "quest_complete")
end

function quest_complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have slain Ithari K'Xyrae and brought her head to Sselnyl Do'Zyth.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		step1_complete_killedIthari(Quest, QuestGiver, Player)
	end
end
