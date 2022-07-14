--[[
	Script Name		:	troll_patrol.lua
	Script Purpose	:	Handles the quest, "Troll Patrol"
	Script Author	:	torsten
	Script Date		:	13.07.2022
	Script Notes	:

	Zone			:	Big Bend
	Quest Giver		:	Braz Gutpounder 
	Preceded by		:	Trollish Delights
	Followed by		:	Gnomore Gnomesteaks
--]]


function Init(Quest)
	AddQuestStepLocation(Quest, 1, "Hang a right leaving the docks, and pass under the first clothesline.", 20, "Perform Braz Gutpounder's patrol around Big Bend.", 11, -37, 0, 36, 134)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "The patrol continues...")
	UpdateQuestTaskGroupDescription(Quest, 1, "I need to patrol around Big Bend.")

    AddQuestStepLocation(Quest, 2, "Continue north along the east Big Bend.", 20, "Continue north along the east Big Bend.", 11, -48, 4, -4.5, 134)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "The patrol continues...")
	UpdateQuestTaskGroupDescription(Quest, 2, "I need to patrol around Big Bend.")

    AddQuestStepLocation(Quest, 3, "Continue on to the intersection near the entrance to South Freeport.", 20, "Continue on to the intersection near the entrance to South Freeport.", 11, -4, 3, -30, 134)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "The patrol continues...")
	UpdateQuestTaskGroupDescription(Quest, 3, "I need to patrol around Big Bend.")

    AddQuestStepLocation(Quest, 4, "Head to The Torch of Oggok.", 20, "Head to The Torch of Oggok in the center of The Big Bend.", 11, 11, 0, 9, 134)
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have completed the patrol.")
	UpdateQuestTaskGroupDescription(Quest, 4, "I needed to patrol around Big Bend.")
	
	local zone = GetZone(Player)
	local Bushy = GetSpawnByLocationID(zone, 133773786, false)
    local SpawnBushy = SpawnByLocationID(zone, 133773786,false)
    
    AddQuestStepKill(Quest, 5, "Kill Bushy Swashbottom!", 1, 100, "I should kill that halfling.", 91, 1340056)
	AddQuestStepCompleteAction(Quest, 5, "Step5Complete")
end

function Step5Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 5, "I have killed Bushy Swashbottom.")
	UpdateQuestTaskGroupDescription(Quest, 5, "I had to kill Bushy Swashbottom.")

    AddQuestStepChat(Quest, 6, "Return to Braz Gutpounder.", 1, "I should return to Braz Gutpounder.", 11, 1340039)
	AddQuestStepCompleteAction(Quest, 6, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Aside from that filthy, foul and disruptive little halfling, the whole patrol was quiet. Only one dead. I suppose it's a good day.")
	GiveQuestReward(Quest, Player)
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
	    QuestComplete(Quest, QuestGiver, Player)
	end
end
