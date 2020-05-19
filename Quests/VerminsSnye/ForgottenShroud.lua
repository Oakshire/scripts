--[[
	Script Name		:	Quests/VerminsSnye/ForgottenShroud.lua
	Script Purpose	        :	Handles the quest, "Forgotten Shroud"
	Script Author	        :       premierio015
	Script Date		:	16.05.2020
	Script Notes 	        :	Auto generated with QuestParser.

	Zone			:	Vermin's Snye
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]



function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with the priests of life.", 1, "I need to take the burial shroud I found to the Temple of Life.", 134, 5890503, 2220164 ) -- ID for both Combined and Classic Qeynos
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
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

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I've spoken with the priests of life.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken to the priests of life about the shroud.")

	AddQuestStepLocation(Quest, 2, "I need to place the shroud on the tomb.", 1, "I need to place the burial shroud back on the tomb of Lord Mrallon.", 134, 235.63, 1.03, -155.85)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I've placed the shroud on the tomb.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've placed the shroud back on Lord Mrallon's tomb.")

	UpdateQuestDescription(Quest, "As I replaced the shroud over the tomb of Lord Mrallon, it faded quickly into nothingness.  It seems as though it was enchanted to prevent dust and decay from entering the coffin.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

