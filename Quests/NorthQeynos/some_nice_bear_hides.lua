--[[
    Script Name    : Quests/NorthQeynos/some_nice_bear_hides.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.11 03:05:03
    Script Purpose : 

        Zone       : NorthQeynos
        Quest Giver: Danielle Clothspinner
        Preceded by: None
        Followed by: 
--]]



function Init(Quest)
	AddQuestStepKill(Quest, 1, "Skin four bears in Antonica for the Clothspinner shop.", 4, 60, "I must try and obtain four preserved bear hides in Antonica for Danielle. Some of the great bears there may have the right quality of coats.", 93, 121370,120257,120011)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/danielle_clothspinner/qey_north/danielleclothspinner004.mp3", "", "happy", 237301026, 160623065, Player)
	AddConversationOption(conversation, "That sounds great! I'll be back with the pelts.")
	StartConversation(conversation, QuestGiver, Player, "Perfect, once I am done with all the sewing and dying for this job I can get started on some top notch pelt work.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have the skins of four bears.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I have gathered the four preserved bear hides for Danielle.")

	AddQuestStepChat(Quest, 2, "I should speak with Danielle Clothspinner.", 1, "I must make sure I get these bear hides to Danielle in North Qeynos.", 93, 2220061)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I have spoken with Danielle Clothspinner.")
	UpdateQuestTaskGroupDescription(Quest, 2, "I have given the preserved bear hide to Danielle.")

	UpdateQuestDescription(Quest, "I have helped Danielle get four preserved bear hides.  So when she is done with her normal sewing and dying she can make some really high quality products to sell.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
