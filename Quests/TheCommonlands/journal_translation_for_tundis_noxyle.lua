--[[
    Script Name    : Quests/TheCommonlands/journal_translation_for_tundis_noxyle.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.20 07:07:49
    Script Purpose : 

        Zone       : TheCommonlands
        Quest Giver: 
        Preceded by: None
        Followed by: 
--]]


function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to find Jhos T'sein", 1, "I'm searching for Jhos T'sein in the Nektulos forest to deliver an ancient Teir'dal journal.", 11, 1790190)
	AddQuestStepCompleteAction(Quest, 1, "QuestComplete")
end

function Accepted(Quest, QuestGiver, Player)
		FaceTarget(QuestGiver, Player)
	local conversation = CreateConversation()
     PlayFlavor(QuestGiver, "voiceover/english/tundis_n_oxyle/commonlands/quests/tundisnoxyle/qst_tundisnoxyle_x2_accept.mp3", "", "", 2745385588, 116783313, Player)
	AddConversationOption(conversation, "That's not much help, but it'll have to do. I'll take the journal to him to translate.")
	StartConversation(conversation, QuestGiver, Player, "Money is not an issue here.  Time is of the essence, I am on the verge of re-discovering our ancient homeland.  You would dare put a price on the importance of the Teir'Dal ancestral homeland?  I suppose I shall dig into the coffers to pay you.  I am not certain where Jhos is in Nektulos, save for a recent letter mentioning ancient spires he was investigating.")

end

function Declined(Quest, QuestGiver, Player)
	-- Add dialog here for when the quest is declined
end

function Deleted(Quest, QuestGiver, Player)
	-- Remove any quest specific items here when the quest is deleted
end

function QuestComplete(Quest, QuestGiver, Player)
	-- The following UpdateQuestStepDescription and UpdateTaskGroupDescription are not needed, parser adds them for completion in case stuff needs to be moved around
	UpdateQuestStepDescription(Quest, 1, "I've delivered the journal to Jhos T'sein.")
	UpdateQuestTaskGroupDescription(Quest, 1, "I found Jhos T'sein and delivered the book that Tundis N'oxyle bid me to.")

	UpdateQuestDescription(Quest, "Jhos T'sein has explained that the translation process could take up to several weeks, and that he will take the book back to Tundis.  I also get the feeling he doesn't fully trust me...")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
	if Step == 1 then
		QuestComplete(Quest, QuestGiver, Player)
	end
end
