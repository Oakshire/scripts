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
    local zone = GetZone(Player)
    
    local NPC1 = GetTempVariable(Player,"spawn1")
    local NPC2 = GetTempVariable(Player,"spawn2")
    local NPC3 = GetTempVariable(Player,"spawn3")
    local NPC4 = GetTempVariable(Player,"spawn4")
    local TREE = GetTempVariable(Player,"treespawn")
    Despawn(NPC1)
    Despawn(NPC2)
    Despawn(NPC3)
    Despawn(NPC4)
    Despawn(TREE)
    newspawn1 = SpawnMob(zone, 1960182, true, 1161.29, -21.6585, -741.387, 0)
    newspawn2 = SpawnMob(zone, 1960182, true, 1165.24, -21.7587, -738.934, 0)
    newspawn3 = SpawnMob(zone, 1960182, true, 1163.75, -21.6419, -744.377, 0)
    newspawn4 = SpawnMob(zone, 1960182, true, 1172.83, -22.529, -745.2644, 0)
    treespawn = SpawnMob(zone, 1960155, true, 1169.29, -22.0886, -742.247, 0)
    
    SetTempVariable(Player, "spawn1", newspawn1)  
    SetTempVariable(Player, "spawn2", newspawn2)
    SetTempVariable(Player, "spawn3", newspawn3)
    SetTempVariable(Player, "spawn4", newspawn4)
    SetTempVariable(Player, "treespawn", treespawn)
    
   Say(Player, "Accepted")
   
	-- Add dialog here for when the quest is accepted
end

function NoStepComplete(Quest, QuestGiver, Player)
    Say(Player, "Hello No Step Complete")
    local zone = GetZone(Spawn)
    local NPC1 = GetTempVariable(Player,"spawn1")
    local NPC2 = GetTempVariable(Player,"spawn2")
    local NPC3 = GetTempVariable(Player,"spawn3")
    local NPC4 = GetTempVariable(Player,"spawn4")
    local TREE = GetTempVariable(Player,"treespawn")
    Despawn(NPC1)
    Despawn(NPC2)
    Despawn(NPC3)
    Despawn(NPC4)
    Despawn(TREE)
    newspawn1 = SpawnMob(zone, 1960154, true, 1161.29, -21.6585, -741.387, 0)
    newspawn2 = SpawnMob(zone, 1960154, true, 1165.24, -21.7587, -738.934, 0)
    newspawn3 = SpawnMob(zone, 1960154, true, 1163.75, -21.6419, -744.377, 0)
    newspawn4 = SpawnMob(zone, 1960154, true, 1172.83, -22.529, -745.2644, 0)
    treespawn = SpawnMob(zone, 1960184, true, 1169.29, -22.0886, -742.247, 0)
    SetTempVariable(Player, "spawn1", newspawn1)  
    SetTempVariable(Player, "spawn2", newspawn2)
    SetTempVariable(Player, "spawn3", newspawn3)
    SetTempVariable(Player, "spawn4", newspawn4)
    SetTempVariable(Player, "treespawn", treespawn)
end
function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
    Say(Player, "Hello Step1 Complete")
	UpdateQuestStepDescription(Quest, 1, "I have sprinkled the dust on the plants and revealed a hidden camp.")

	
	AddQuestStepSpell(Quest, 2, "I need to search the camp for any items that would be useful for Germain's investigation.", 1, 100, "I need to return to the strange plants and sprinkle Poko's powder on them to see if they're hiding something.", 11, "search book")
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
    Say(Player, "Hello Step1 Complete")
	UpdateQuestStepDescription(Quest, 2, "I have found a gnollish book within the hidden camp.")
	GiveQuestItem(Quest, Player, "You found a gnolish book.", 1826)
	
	AddQuestStepChat(Quest, 3, "I need to bring what I found to Lieutenant Germain.", 1, "I need to return to the strange plants and sprinkle Poko's powder on them to see if they're hiding something.", 11, 1960005)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	local zone = GetZone(Spawn)
    local NPC1 = GetTempVariable(Player,"spawn1")
    local NPC2 = GetTempVariable(Player,"spawn2")
    local NPC3 = GetTempVariable(Player,"spawn3")
    local NPC4 = GetTempVariable(Player,"spawn4")
    local TREE = GetTempVariable(Player,"treespawn")
    Despawn(NPC1)
    Despawn(NPC2)
    Despawn(NPC3)
    Despawn(NPC4)
    Despawn(TREE)
    newspawn1 = SpawnMob(zone, 1960154, true, 1161.29, -21.6585, -741.387, 0)
    newspawn2 = SpawnMob(zone, 1960154, true, 1165.24, -21.7587, -738.934, 0)
    newspawn3 = SpawnMob(zone, 1960154, true, 1163.75, -21.6419, -744.377, 0)
    newspawn4 = SpawnMob(zone, 1960154, true, 1172.83, -22.529, -745.2644, 0)
    treespawn = SpawnMob(zone, 1960184, true, 1169.29, -22.0886, -742.247, 0)
    SetTempVariable(Player, "spawn1", newspawn1)  
    SetTempVariable(Player, "spawn2", newspawn2)
    SetTempVariable(Player, "spawn3", newspawn3)
    SetTempVariable(Player, "spawn4", newspawn4)
    SetTempVariable(Player, "treespawn", treespawn)
	
	UpdateQuestStepDescription(Quest, 3, "I have spoken with Lieutenant Germain.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have discovered a hidden encampment.")

	UpdateQuestDescription(Quest, "The powder revealed a hidden camp, in it I found clues that I brought to Lieutenant Germain.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
    Say(Player, "Hello Reload ")
	if Step == 0 then
	    Say(Player, "Hello Step 0 ")
	    NoStepComplete(Quest, QuestGiver, Player)
	elseif Step == 1 then
	    Say(Player, "Hello Step 0 ")
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
	    Say(Player, "Hello Step 0 ")
		Step2Complete(Quest, QuestGiver, Player)
	elseif Step == 3 then
	    Say(Player, "Hello Step 0 ")
		QuestComplete(Quest, QuestGiver, Player)
	else
	    Say(Player, "Hello Step ?")
	    NoStepComplete(Quest, QuestGiver, Player)
	end
end
