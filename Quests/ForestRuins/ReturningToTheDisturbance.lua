--[[
	Script Name		:	returning_to_the_disturbance.lua
	Script Purpose	:	Handles the quest, "Returning to the Disturbance"
	Script Author	:	Ememjr
	Script Date		:	5/17/2020
	Script Notes	:	

	Zone			:	Forest Ruins
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
   
	AddQuestStep(Quest, 1, "I need to return to the strange plants west of the northern end of the ruins and sprinkle some of the dust that Poko made on them.", 1, 100, "I need to return to the strange plants and sprinkle Poko's powder on them to see if they're hiding something.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
   local zone = GetZone(Spawn)
   local NPC1 = GetSpawnByLocationID(zone, 475035)
   local NPC2 = GetSpawnByLocationID(zone, 1587510)
   local NPC3 = GetSpawnByLocationID(zone, 1587511)
   local NPC4 = GetSpawnByLocationID(zone, 1587512)
   Despawn(NPC1)
   Despawn(NPC2)
   Despawn(NPC3)
   Despawn(NPC4)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have sprinkled the dust on the plants and revealed a hidden camp.")

	AddQuestStep(Quest, 2, "I need to search the camp for any items that would be useful for Germain's investigation.", 1, 100, "I need to return to the strange plants and sprinkle Poko's powder on them to see if they're hiding something.", 11)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have found a gnollish book within the hidden camp.")

	AddQuestStepChat(Quest, 3, "I need to bring what I found to Lieutenant Germain.", 1, "I need to return to the strange plants and sprinkle Poko's powder on them to see if they're hiding something.", 11, 1960005)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	local zone = GetZone(Spawn)
    local NPC1 = GetSpawnByLocationID(zone, 1587609)
    local NPC2 = GetSpawnByLocationID(zone, 1587610)
    local NPC3 = GetSpawnByLocationID(zone, 1587611)
    local NPC4 = GetSpawnByLocationID(zone, 1587612)
    Despawn(NPC1)
    Despawn(NPC2)
    Despawn(NPC3)
    Despawn(NPC4)
	newSpawn = SpawnByLocationID(zone,475035)
	newSpawn = SpawnByLocationID(zone, 1587510)
	newSpawn = SpawnByLocationID(zone, 1587511)
	newSpawn = SpawnByLocationID(zone, 1587512)
	
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have discovered a hidden encampment.")

	UpdateQuestDescription(Quest, "The powder revealed a hidden camp, in it I found clues that I brought to Lieutenant Germain.")
	GiveQuestReward(Quest, Player)
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
