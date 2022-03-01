--[[
	Script Name		:	Quests/Commonlands/GrizzlefangsMane.lua
	Script Purpose	:	Handles the quest, "Grizzlefang's Mane"
	Script Author	:	premierio015
	Script Date		:	18.05.2021
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	Commonlands
	Quest Giver		:	J.P. Feterman
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "Slay J.P. Feterman's nemesis, Grizzlefang", 1, 100, "J.P. Feterman wants me to slay his nemesis, Grizzlefang. Grizzlefang can often be found near the druid ring far to the west of the Crossroads.", 94, 330349)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I'll be fine.")
	StartConversation(conversation, QuestGiver, Player, "If you don't come back I'll know why.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have Grizzlefang's mane.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have Grizzlefang's mane and should return to J.P. Feterman.")

	AddQuestStepChat(Quest, 2, "I need to return to J.P. Feterman", 1, "I have Grizzlefang's mane and should speak to J.P. Feterman.", 94, 330261)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with J.P. Feterman")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given J.P. Feterman Grizzlefang's mane for his collection.")

	UpdateQuestDescription(Quest, "I have killed Grizzlefang and given his mane to J.P. Feterman.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

