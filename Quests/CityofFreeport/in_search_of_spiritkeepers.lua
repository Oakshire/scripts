--[[
	Script Name		:	Quests/CityofFreeport/in_search_of_spiritkeepers.lua
	Script Purpose	:	Handles the quest, "In Search of Spiritkeepers"
	Script Author	:	premierio015
	Script Date		:	26.04.2022
	Script Notes	:	Auto generated with QuestParser.

	Zone			:	The City of Freeport
	Quest Giver		:	
	Preceded by		:	None
	Followed by		:	None
--]]


function Init(Quest)
	AddQuestStepKill(Quest, 1, "I must hunt down and slay five spiritkeepers in the Wailing Caves.", 5, 100, "I must hunt down and slay five spiritkeepers in the Wailing Caves.", 611, 2580054)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	PlayFlavor(QuestGiver, "voiceover/english/lieutenant_darrius/fprt_west/quests/lieutenantdarrius/lieutenantdarrius_x2_accept.mp3", "", "", 2840316814, 2613001030, Player)
    conversation = CreateConversation()
	AddConversationOption(conversation, "The task will be done!")
	AddConversationOption(conversation, "I understand.")
	AddConversationOption(conversation, "You need not be clearer, sir!")
	StartConversation(conversation, NPC, Spawn, "I'm glad that we have such ... loyal and willing citizens in our midst. You have pledged your assistance to the militia; be sure that you see this task through to its end, or you will meet yours.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have slain and scalped five Ree spiritkeepers. ")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have slain and scalped five Ree spiritkeepers.")

	AddQuestStepChat(Quest, 2, "I must return the scalps to Lieutenant Darrius.", 1, "I must return the scalps to Lieutenant Darrius.", 158, 1680056, 5590120)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have delivered the scalps of five Ree spiritkeepers to Lieutenant Darrius. ")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have delivered the scalps of five Ree spiritkeepers to Lieutenant Darrius.")

	UpdateQuestDescription(Quest, "I was hired by the Freeport Milita officer, Lieutenant Darrius, to hunt down rumored spiritkeepers in the Wailing Caves. I slew no less than five Ree spiritkeeprs and returned with their scalps as proof. For this service, I was paid handsomely.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end


