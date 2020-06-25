--[[
	Script Name	: Quests/LongshadowAlley/meet_the_custodian.lua
	Script Purpose	: Handles the quest, "Meet the Custodian"
	Script Author	: Scatman
	Script Date	: 2009.04.11
	
	Zone       : Longshadow Alley
	Quest Giver: Aldera V'Exxa
	Preceded by: A Lesson Learned (a_lesson_learned.lua)
	Followed by: None
--]]

function Init(Quest)
	AddQuestStepChat(Quest, 1, "I need to locate Custodian Sullissa, whom I will find in the Graveyard.", 1, ".", 0, 1250002)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")
end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/tutorial_revamp/aldera_v_exxa/fprt_hood05/quests/alderavexxa/aldera_x1_032.mp3", "", "", 3598421392, 2829289499, Player)
	AddConversationOption(conversation, "Thank you for your wisdom, I hope your friend in the Graveyard can teach me as much as you have.")
	StartConversation(conversation, QuestGiver, Player, "As promised, I will direct you to where you can learn to harness the other strengths of the Teir'Dal. Now that you understand the correct etiquette, perhaps you won't get yourself killed. Go now to Custodian Zaddar Sullissia in the Graveyard. By helping him accomplish his tasks, you will gain not only the respect of your own people, you will also learn to harness your own strengths and weaknesses.")
end

function Declined(Quest, QuestGiver, Player)
end

function Deleted(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I have spoken with Custodian Zaddar Sullissa in the Graveyard and will learn more from this scholar.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end