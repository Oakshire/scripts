--[[
	Script Name		:	ElementsofaRitual.lua
	Script Purpose	:	Handles the quest, "Elements of a Ritual"
	Script Author	:	Shatou
	Script Date		:	1/3/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	Consul Bree
	Preceded by		:	Hit Them Where it Hurts
	Followed by		:	High Shaman of the Rockpaw
--]]

local EMMA_TORQUE_ID = 1970007
local ALBINO_PYTHON_ID = 1970009
local INCANTATION_DUST_ID = 8295
local RIVER_STONE_ID = 11599
local DRAWING_RAY_ID = 46016


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to speak with Emma Torque.", 1, "I need to acquire the object necessary to get a river stone from a river behemoth from Emma Torque.", 11, EMMA_TORQUE_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have spoken with Emma Torque.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have acquired the Drawing Ray.")

	AddQuestStepKill(Quest, 2, "I need to collect five crown scales from albino pythons here in the Caves.", 5, 100, "I need to collect the items necessary for the summoning ritual.", 84, ALBINO_PYTHON_ID)
	AddQuestStepCompleteAction(Quest, 2, "Step2Complete")
end

function Step2Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 2, "I have collected five crown scales.")

	AddQuestStepHarvest(Quest, 3, "I need to collect incantation dust from the Rockpaw camps.", 1, 100, "I need to collect the items necessary for the summoning ritual.", 10, INCANTATION_DUST_ID)
	AddQuestStepCompleteAction(Quest, 3, "Step3Complete")
end

function Step3Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 3, "I have collected incantation dust from the Rockpaw camps.")

	--AddQuestStepKill(Quest, 4, "I need to collect a river stone from a river behemoth. I will need to use Emma's device on the remains of one to get the stone.", 1, 100, "I need to collect the items necessary for the summoning ritual.", 769, 1970031)
	
	AddQuestStepObtainItem(Quest, 4, "I need to collect a river stone from a river behemoth. I will need to use Emma's device on the remains of one to get the stone.", 1, 100, "I need to collect the items necessary for the summoning ritual.", 769, RIVER_STONE_ID)
	
	AddQuestStepCompleteAction(Quest, 4, "Step4Complete")
end

function Step4Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 4, "I have collected a river stone.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have collected the necessary items.")

	AddQuestStepChat(Quest, 5, "I need to return to Consul Bree.", 1, "I need to return to Consul Bree now that I have collected all of the needed items.", 11, RIVER_STONE_ID, INCANTATION_DUST_ID)
	AddQuestStepCompleteAction(Quest, 5, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 5, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 3, "I have spoken with Consul Bree.")

	UpdateQuestDescription(Quest, "Now that I have gotten all of the items required for the ritual, I will be able to summon Zen'Durath.")
	GiveQuestReward(Quest, Player)
    RemoveItem(Player, DRAWING_RAY_ID)
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

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, Player)
	RemoveItem(Player, DRAWING_RAY_ID)
end