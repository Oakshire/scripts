--[[
    Script Name    : Quests/Antonica/fishing_hole_hunt.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.13 06:08:18
    Script Purpose : 

        Zone       : Antonica
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepZoneLoc(Quest, 1, "I must check the nearby Windstalker Village pond.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2540, -1900, 0, -660, 12)
		AddQuestStepZoneLoc(Quest, 2, "I should check Crater Pond near the gate to South Qeynos.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2541,  150, 0, 490, 12)
			AddQuestStepZoneLoc(Quest, 3, "Check the pond in Archer Woods, which is located in the southern area of Antonica.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2542, -750, 0, 450, 12)
				AddQuestStepZoneLoc(Quest, 4, "Visit the waterfall east of Blackburrow.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2544, -1800, 0, 800, 12)
					AddQuestStepZoneLoc(Quest, 5, "Check the moat at the Keep of the Gnollslayers to the south.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2547, -2100, 0, 430, 12)
	AddQuestStepZoneLoc(Quest, 6, "Check the moat at the Keep of the Ardent Needle, southwest of the Oracle Tower Station.", 1, "Blarton wants me to check on all of his favorite fishing spots in Antonica.", 2548, -550, 0, -330, 12)
	
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
		AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
			AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
	AddQuestStepCompleteAction(Quest, 6, "Step6Complete")
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
	UpdateQuestStepDescription(Quest, 1, "There were plenty of fish at Windstalker Village.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "There was a surprising number of fish at Crater Pond.")
CheckProgress(Quest, QuestGiver, Player)
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I didn't see any fish in the pond in Archer Woods.")
  CheckProgress(Quest, QuestGiver, Player)
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "There were a few fish at the waterfall near Blackburrow.")
	CheckProgress(Quest, QuestGiver, Player)
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "There are fish at the Keep of the Gnollslayers.")
	CheckProgress(Quest, QuestGiver, Player)
end



function CheckProgress(Quest, QuestGiver, Player)
    if QuestStepIsComplete(Player, 5337, 1) and QuestStepIsComplete(Player, 5337, 2) and QuestStepIsComplete(Player, 5337, 3) and QuestStepIsComplete(Player, 5337, 4) and QuestStepIsComplete(Player, 5337, 5) and QuestStepIsComplete(Player, 5337, 6)  then
  	UpdateQuestTaskGroupDescription(Quest, 1, "I have checked all of the fishing spots and should return to Blarton in Windstalker Village.")
	AddQuestStepChat(Quest, 7, "Return to Blarton in Windstalker Village.", 1, "I checked all of the fishing spots. Now I must return to Blarton in Windstalker Village.", 11, 120163)
	AddQuestStepCompleteAction(Quest, 7, "QuestComplete")
end
   end

function Step6Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 6, "There were plenty of fish in the moat at the Keep of the Ardent Needle.")
	CheckProgress(Quest, QuestGiver, Player)
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 7, "I told Blarton what I saw at his fishing spots.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have told Blarton about what I saw at his fishing spots.")

	UpdateQuestDescription(Quest, "I have helped Blarton Blumble and checked on all of his favorite fishing spots. Does he need me to do anything else for him?")
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
		QuestComplete(Quest, QuestGiver, Player)
	end
end

