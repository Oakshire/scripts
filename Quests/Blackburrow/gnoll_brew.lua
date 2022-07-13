--[[
    Script Name    : Quests/Blackburrow/gnoll_brew.lua
    Script Author  : Premierio015
    Script Date    : 2022.07.12 05:07:38
    Script Purpose : 

        Zone       : Blackburrow
        Quest Giver: Assisstant Wilabus(170013)
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStep(Quest, 1, "Get a jug of gnoll brew", 1, 100, "I need to find the gnoll brewery and retrieve a jug of their brew for Wilabus.", 11)
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
    	 PlayFlavor(QuestGiver, "voiceover/english/assistant_wilabus/blackburrow/assistant_wilabus005.mp3", "", "", 834049646, 2133664377, Player)
		local conversation = CreateConversation()
	AddConversationOption(conversation, "Ok.")
	StartConversation(conversation, QuestGiver, Player, "Oh, that'd be great!! Do me a favor though.  Don't mention this to Fribden, eh, you know what I'm saying.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I found a jug of gnoll brew")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found the gnoll brewery and retrieved a jug of their brew for Wilabus.")

	AddQuestStepChat(Quest, 2, "Return to Wilabus", 1, "I found the brewery and got the jug, now I need to return to Wilabus.", 11, 170013)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 2, "I gave the jug to Wilabus")
	UpdateQuestTaskGroupDescription(Quest, 2, "I returned to Wilabus and gave him the jug of gnoll brew.")

	UpdateQuestDescription(Quest, "Sure enough, there was a brewery in Blackburrow.  This gives a new meaning to the phrase, &quot;The hair of the dog.&quot;")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end

