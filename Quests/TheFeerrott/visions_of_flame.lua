--[[
    Script Name    : Quests/TheFeerrott/visions_of_flame.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.14 07:10:50
    Script Purpose : 

        Zone       : TheFeerrott
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to slay 200 lizardmen in the Feerrott.", 200, 100, "I must slay lizardmen in the Feerrott to weaken their forces.", 611, 1210178, 1210166, 1210170, 1210158, 1210152, 1210164, 1210167, 1210172, 1210173, 1210161, 1210010, 1210160, 1210162, 1210153, 1210168, 1210169, 1210064, 1210151, 1210083, 1210086, 1210087, 1210088, 1210089, 1210009, 1210049, 1210078, 1210063, 1210159, 1210180, 1210065, 1210111, 1210112, 1210113, 1210068)
	-- WE HAVE MISSING SPAWNS IN OUR DB, WHICH SHOULD BE ADDED IN THIS SCRIPT: a Evol Ew healer, Eye of Thule subservient, an Evol Ritualist, an Evol follower, Tae Ew Tactician, a Evol Ew thaumaturge, a Evol Ew mystic, a Evol Ew assassin.
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
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

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I have slain the lizardmen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain many lizardmen in the Feerrott.")

	UpdateQuestDescription(Quest, "I have slain the lizardmen and have stopped what could have been a major invasion!")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

