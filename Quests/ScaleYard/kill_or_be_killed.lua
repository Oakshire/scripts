--[[
	Script Name	: Quests/ScaleYard/kill_or_be_killed.lua
	Script Purpose	: Quest 343, Kill or be killed.
	Script Author	: Xanibunib
	Script Date	: 3.30.2009 (updated by torsten 1.8.2022)
	
	Zone       : Scale Yard
	Quest Giver: Brood Matron Vrim Malthyk
	Quest ID#	: 343
	Preceded by: Paying Homeage To The Past
	Followed by: Report To Enforcer Kurdak
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Anthony Glavias must be relived of his duty as a member of the Freeport Militia.", 1, 100, "Militia member, Anthony Glvias, has proven to be too incompetant to serve in the Freeport Militia. He must be relived of his duty. He is currently stationed West of the Fountain of the Fallen Soldier.", 0, 1390038)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
    UpdateQuestStepDescription(Quest, 1, "I talked to Anthony Glavias.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I talked to Anthony Glavias but he attacked me.")
	
	local zone = GetZone(Player)
    local RuzbNPC = GetSpawnByLocationID(zone, 410590, false)
    Despawn(RuzbNPC)
    
    local Ruzb = GetSpawnByLocationID(zone, 133774148, false)
    local SpawnRuzb = SpawnByLocationID(zone, 133774148,false)
    Attack(SpawnRuzb, Player)
    
    AddQuestStepKill(Quest, 2, "Anthony Glavias must be relived of his duty as a member of the Freeport Militia.", 1, 100, "Militia member, Anthony Glvias, has proven to be too incompetant to serve in the Freeport Militia. He must be relived of his duty. He is currently stationed West of the Fountain of the Fallen Soldier.", 0, 1390125)
	AddQuestStepCompleteAction(Quest, 2, "AnthonyDead")
end

function AnthonyDead(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "I have relived Anthony of his duty..")
	
	AddQuestStepChat(Quest, 3, "I must inform Vrim of my actions.", 1, "I must speak with Vrim.", 0, 1260003)
	AddQuestStepCompleteAction(Quest, 3, "QuestComplete")
end
	
function QuestComplete(Quest, QuestGiver, Player)
	UpdateQuestTaskGroupDescription(Quest, 2, "Anthony Glavias has been retired.")
	GiveQuestReward(Quest, Player)
end

function Accepted(Quest, QuestGiver, Player)
end

function Declined(Quest, QuestGiver, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		AnthonyDead(Quest, QuestGiver, Player)
	elseif Step == 3 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end