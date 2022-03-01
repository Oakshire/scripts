--[[
	Script Name		:	HighShamanoftheRockpaw.lua
	Script Purpose	:	Handles the quest, "High Shaman of the Rockpaw"
	Script Author	:	Shatou
	Script Date		:	1/5/2020
	Script Notes	:	

	Zone			:	Caves
	Quest Giver		:	
	Preceded by		:	Elements of a Ritual
	Followed by		:	none
--]]

local HIGH_SHAMAN_ZEN_DURATH_ID = 1970058
local HEAD_OF_HIGH_SHAMAN_ID = 8063

function Init(Quest)
	AddQuestStepKill(Quest, 1, "I need to take the summoning staff to the large skull on the level just above Consul Bree. Once there I need to place the staff in the skull to summon the High Shaman.", 1, 100, "I need to summon Zen'Durath and take his head.", 1220, HIGH_SHAMAN_ZEN_DURATH_ID)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain High Shaman Zen'Durath.")
	
	GiveQuestItem(Quest, Player, "", HEAD_OF_HIGH_SHAMAN_ID)

	AddQuestStepChat(Quest, 2, "I need to return to Consul Bree.", 1, "I need to summon Zen'Durath and take his head.", 11)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Consul Bree.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain Zen'Durath.")

	UpdateQuestDescription(Quest, "I have slain Zen'Durath.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

function Accepted(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is accepted
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end