--[[
    Script Name    : Quests/Antonica/the_hidden_riddle.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.22 06:07:59
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Find the secret vault of knowledge in the Ruins of Varsoon.", 1, 100, "I must discover a secret library or vault of secrets inside the Ruins of Varsoon. There I should find the puzzle box.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a secret bookcase vault holding the puzzle box.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I discovered the secret bookcase vault holding the puzzle box. But it is locked and requires two unique keys being held in the Ruins of Varsoon.")

	AddQuestStepKill(Quest, 2, "Hunt down Varsoon apprentices in the Ruins of Varsoon.", 1, 30, "I must hunt down the creatures believed to be holding the two keys required to open the secret vault holding the puzzle box. They lurk in the Ruins of Varsoon.", 2169, 2490226, 2560000)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I obtained the Skull Key to unlock the bookcase vault.")

	AddQuestStepKill(Quest, 3, "Hunt down incomplete guardians in the Ruins of Varsoon.", 1, 30, "I must hunt down the creatures believed to be holding the two keys required to open the secret vault holding the puzzle box. They lurk in the Ruins of Varsoon.", 1007, 2560042)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I obtained the Star Key to unlock the bookcase vault.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I obtained the two keys required to open the bookcase vault.")

	AddQuestStep(Quest, 4, "Unlock the secret bookcase vault.", 1, 100, "I must return to the secret bookcase vault holding the puzzle box and open it with the two keys.", 1212)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I retrieved the puzzle box called 'The Riddle of Saryrn.'")
	UpdateQuestTaskGroupDescription(Quest, 3, "I opened the secret bookcase vault and retrieved the puzzle box called 'The Riddle of Saryrn'.")

	AddQuestStepChat(Quest, 5, "Return to Rikantus in Antonica. ", 1, "I must return to Antonica to deliver the puzzle box to Rikantus in Evernight Cemetery.", 11, 120403)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I returned to Rikantus in Antonica. ")
	UpdateQuestTaskGroupDescription(Quest, 4, "I returned to Antonica to deliver the puzzle box called 'The Riddle of Saryrn' to Rikantus in Evernight Cemetery.")

	UpdateQuestDescription(Quest, "I recovered the puzzle box called 'The Riddle of Saryrn.' I delivered the ancient toy to the rightful owner, Rikantus.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
		Step3Complete(Quest, QuestGiver, Player)
	elseif Step == 4 then
		Step4Complete(Quest, QuestGiver, Player)
	elseif Step == 5 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


