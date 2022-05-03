--[[
	Script Name		:	Quests/CityofFreeport/the_stein_of_moggok_it_can_be_rebuilt.lua
	Script Purpose	:	Handles the quest, "The Stein of Moggok:  It Can Be Rebuilt..."
	Script Author	:	premierio015
	Script Date		:	02.04.2022
	Script Notes	:	

	Zone			:	Freeport
	Quest Giver		:	Rumdum
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to recover the left half of the Stein from the Feerrott Bouncers.", 1, 100, "I need to collect the four pieces of the Stein of Moggok from the Bouncers in the Feerrott.", 11, 1210139)
		AddQuestStepKill(Quest, 2, "I need to recover the right half of the Stein from the Feerrott Bouncers.", 1, 100, "I need to collect the four pieces of the Stein of Moggok from the Bouncers in the Feerrott.", 11, 1210156)
	AddQuestStepKill(Quest, 3, "I need to recover the handle of the Stein from the Feerrott Bouncers.", 1, 100, "I need to collect the four pieces of the Stein of Moggok from the Bouncers in the Feerrott.", 11, 1210148)
		AddQuestStepKill(Quest, 4, "I need to recover the lid of the Stein from the Feerrott Bouncers.", 1, 100, "I need to collect the four pieces of the Stein of Moggok from the Bouncers in the Feerrott.", 11, 1210098)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
		AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	SetQuestRewardStatus(Quest, 44800)
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
	UpdateQuestStepDescription(Quest, 1, "I got the left half of the Stein from Bouncer Flerb.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I got the right half of the Stein from Bouncer Fug.")
    CheckProgress(Quest, QuestGiver, Player)
end



function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I got the handle of the Stein from Bouncer Hurd.")
CheckProgress(Quest, QuestGiver, Player)
end

function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5511, 1) and QuestStepIsComplete(Player, 5511, 2) and QuestStepIsComplete(Player, 5511, 3) and QuestStepIsComplete(Player, 5511, 4)  then
	        Step4Complete(Quest, QuestGiver, Player)
end	
   end


function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I got the lid of the Stein from Bouncer Prud.")
   UpdateQuestTaskGroupDescription(Quest, 1, "I collected all four pieces of the Stein of Moggok.")
	AddQuestStepChat(Quest, 5, "I should speak with Rumdum.", 1, "I should speak with Rumdum.", 11, 1280030, 5590392)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I spoke with Rumdum.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I spoke with Rumdum.")
    
	AddQuestStepKill(Quest, 6, "I need to get the Blood Ruby.", 1, 100, "I need to find the resting place of Clurg in the Feerrott and find a Blood Ruby.", 1194,  1210294)
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "I got the Blood Ruby from Clurg.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I got the Blood Ruby from Clurg.")

	AddQuestStepChat(Quest, 7, "I should speak with Rumdum.", 1, "I should speak with Rumdum.", 11, 1280030, 5590392)
	AddQuestStepCompleteAction(Quest, 7, "Step7Complete")
end

function Step7Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 7, "I spoke with Rumdum.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I spoke with Rumdum.")
    GiveQuestItem(Quest, Player, "I spoke with Rumdum." ,  13961, 14072, 31562)
	AddQuestStepCraft(Quest, 8, "I need to remake the Stein of Moggok.", 1, 100, "I need to remake the Stein of Moggok using Rumdum's family Recipe.", 11, 54775)
	AddQuestStepCompleteAction(Quest, 8, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 8, "I remade the Stein of Moggok!")
	UpdateQuestTaskGroupDescription(Quest, 5, "I remade the Stein of Moggok!")
   
	UpdateQuestDescription(Quest, "I was able to rebuild the Stein of Moggok!  I'll be sure not to mention this to Rumdum...")
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
		Step5Complete(Quest, QuestGiver, Player)
	elseif Step == 6 then
		Step6Complete(Quest, QuestGiver, Player)
	elseif Step == 7 then
		Step7Complete(Quest, QuestGiver, Player)
	elseif Step == 8 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
