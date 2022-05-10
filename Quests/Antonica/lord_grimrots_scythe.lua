--[[
    Script Name    : Quests/Antonica/lord_grimrots_scythe.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.08 10:05:57
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: Ignar Steadirt
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "Grel Stoneshearer overlooks the Keep of the Ardent Needle from a nearby hilltop.", 1, "I need to speak with the dwarven knights in Antonica.", 11, 120204)
		AddQuestStepChat(Quest, 2, "Grelda Stoneshearer is near the Keep of the Gnollslayers.", 1, "I need to speak with the dwarven knights in Antonica.", 11, 120314)
			AddQuestStepChat(Quest, 3, "Morte Winghammer is near a covered bridge.", 1, "I need to speak with the dwarven knights in Antonica.", 11, 120308)
			
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
			AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I can do that.")
	StartConversation(conversation, QuestGiver, Player, "I need those darned dispatches brought back to me! You'd think that folks who get to run around looking for danger would realize how important it is to send word back to ... well, me.  Since they haven't, I need someone to knock them upside their heads and get the information, then bring it back to me.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I spoke with Grel.")
   CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I've spoken with Grelda.")
    CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "No one told me Morte was a human!")
  CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I spoke with Ignar.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I've spoken with Ignar Steadirt.")

	AddQuestStepKill(Quest, 5, "The Sabertooth rune casters possess a part of the scythe.  They are northeast of Archer's Wood, east down the path, approaching Bramble Woods in Antonica.", 1, 100, "I need to obtain Lord Grimrot's scythe from the gnolls.", 640, 120300, 121409)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I located and destroyed part of Lord Grimrot's scythe.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I've destroyed part of Lord Grimrot's scythe.")

	AddQuestStepChat(Quest, 6, "Ignar is near the Qeynos' Claymore memorial.", 1, "I need to report to Ignar Steadirt.", 11, 120414)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I've spoken with Ignar.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I've spoken with Ignar.")

	AddQuestStepKill(Quest, 7, "This piece is with the Darkpaw rune casters in Bramble Woods in Antonica.", 1, 100, "I must destroy the remaining piece of Lord Grimrot's war scythe.", 640, 120309, 121415)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I've obtained and destroyed the war scythe.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I've destroyed the remaining piece of the war scythe.")

	AddQuestStepChat(Quest, 8, "Ignar Steadirt is near the Qeynos Claymore memorial.", 1, "I need to return to Ignar Steadirt.", 11, 120414)
	AddQuestStepCompleteAction(Quest, 8, "Step8Complete")
end

function Step8Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 8, "I reported the destruction of the war scythe to Ignar.")
	UpdateQuestTaskGroupDescription(Quest, 6, "I've spoken to Ignar Steadirt.")

	AddQuestStepChat(Quest, 9, "Grimbold Steadirt is near the entrance to Firemyst Gully.", 1, "I need to seek Grimbold Steadirt, the dwarven centurion.", 11, 120010)
	AddQuestStepCompleteAction(Quest, 9, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 9, "I spoke with Grimbold.")
	UpdateQuestTaskGroupDescription(Quest, 7, "I've spoken to Grimbold Steadirt.")

	UpdateQuestDescription(Quest, "Ignar Steadirt is still frustrated that he has to remain at the Claymore monument, but he was very grateful for living the battles vicariously through my reports.  It has been my pleasure.")
	GiveQuestReward(Quest, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5522, 1) and QuestStepIsComplete(Player, 5522, 2) and QuestStepIsComplete(Player, 5522, 3) then
      	UpdateQuestTaskGroupDescription(Quest, 1, "I've spoken with three dwarven knights.  Well, two dwarves and one human dwarven knight, anyway.")
        	AddQuestStepChat(Quest, 4, "Ignar Steadirt is near the Qeynos' Claymore memorial.", 1, "I need to report back to Ignar Steadirt.", 11, 120414)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	end
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		Step8Complete(Quest, QuestGiver, Player)
	elseif Step == 9 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

