--[[
    Script Name    : Quests/WailingCaves/double_cross__revenge.lua
    Script Author  : Premierio015
    Script Date    : 2022.04.24 16:39
    Script Purpose : 

        Zone       : WailingCaves
        Quest Giver: Ariana Neovra
        Preceded by: None
        Followed by: 
--]]

function Init(Quest)
	AddQuestStepKill(Quest, 1, "Kill advisor Kre'lak.", 1, 10, "The first thing I need to do is buy some time by killing advisor Kre'lak. Then I will have enough time to warn Ariana's husband and the nomad camp.", 0, 2580019 )
	AddQuestStepCompleteAction(Quest, 1, "Step1Complete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
    PlayFlavor(QuestGiver, "voiceover/english/ariana_neovra/wailingcaves/ariana_neovra/ariana_neovra007.mp3", "", "", 1560182233, 3773503109, Player)
	AddConversationOption(conversation, "I'll do what I can.")
	StartConversation(conversation, QuestGiver, Player, "Kill the orc advisor Kre'lak. I'm sure that will slow the orcs down long enough for my people to prepare for the attack.")
end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function Step1Complete(Quest, QuestGiver, Player)
	UpdateQuestStepDescription(Quest, 1, "I have killed Kre'lak.")

	AddQuestStepChat(Quest, 2, "Warn Orwen Neovra.", 1, 100, "I need to warn Ariana's husband Orwen in the Commonlands of the impending attack by the orcs.", 0, 330137)
	AddQuestStepCompleteAction(Quest, 2, "QuestComplete")
end


function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 3, "I have warned Orwen.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I've warned Ariana's husband Orwen, though somehow he seemed to have already known.")
	UpdateQuestDescription(Quest, "I was successful in each of my tasks. I took care of the orc advisor and warned her husband. Owren was in the midst of fashioning another blade and gave it to me for my continued service.")
	GiveQuestReward(Quest, Player)
end


function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		Step1Complete(Quest, QuestGiver, Player)
	elseif Step == 2 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
