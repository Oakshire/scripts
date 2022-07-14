--[[
	Script Name		:	gnomore_gnomesteaks.lua
	Script Purpose	:	Handles the quest, "Gnomore Gnomesteaks"
	Script Author	:	torsten
	Script Date		:	13.07.2022
	Script Notes	:	

	Zone			:	Big Bend
	Quest Giver		:	Braz Gutpounder
	Preceded by		:	Troll Patrol
	Followed by		:	Troll Adventures
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "Check up on Ruzb and see if he's back to eating gnomes again.", 1, "Check in with Ruzb and make sure he's not gone back to eating gnomes again.", 11, 1340024)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "Looks like Ruzb is beyond salvation.")
	UpdateQuestTaskGroupDescription(Quest, 1, "Looks like Ruzb just couldn't keep away from the gnomesteaks. His loss.")
	
	local zone = GetZone(Player)
	local RuzbNPC = GetSpawnByLocationID(zone, 388762, false)
    Despawn(RuzbNPC)
    
    local Ruzb = GetSpawnByLocationID(zone, 133773787, false)
    local SpawnRuzb = SpawnByLocationID(zone, 133773787,false)

    AddQuestStepKill(Quest, 2, "I need to kill Ruzb!", 1, 100, "I need to kill Ruzb after he attacked me.", 91, 1340140)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I needed to kill Ruzb.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I needed to kill Ruzb after he attacked me.")
    
    AddQuestStepChat(Quest, 3, "I need to return to Braz.", 1, "I need to return to Braz after I killed Ruzb.", 11, 1340039)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "Unfortunately, Ruzb just couldn't keep from eating the gnomes. Much to his discomfort, he had to be put out of his own misery. Or rather, Freeport can't have its citizens eating each other. It's just bad for morale.")
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
	    QuestComplete(Quest, QuestGiver, Player)
	end
end

