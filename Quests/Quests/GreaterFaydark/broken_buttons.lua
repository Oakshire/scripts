--[[
	Script Name	: Quests/GreaterFaydark/broken_buttons.lua
	Script Purpose	: Handles the quest, "Broken Buttons"
	Script Author	: Scatman
	Script Date	: 2009.03.29
	
	Zone       : Greater Faydark
	Quest Giver: Ami Augren
	Preceded by: Shells of Protection (shells_of_protection.lua)
	Followed by: Dollnapping! (dollnapping.lua)
--]]


function Init(Quest)
	-- Aged Chain
	-- Augren Friendship Token


	AddQuestStepChat(Quest, 1, "I need to give the coat and buttons to Ami's mother. She should be near the spirit bloom nursery.", 1, ".", 281, 1140018)
	AddQuestStepCompleteAction(Quest, 1, "Quest_Complete")

end

function Accepted(Quest, QuestGiver, Player)
	FaceTarget(QuestGiver, Player)
	conversation = CreateConversation()
	
	PlayFlavor(QuestGiver, "voiceover/english/exp03_questvo2/ami_augren/_exp03/exp03_rgn_greater_faydark/ami_augren/ami_augren010.mp3", "", "", 3660711041, 3242516728, Player)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, QuestGiver, Player, "Tell her I didn't mean to break it.")
end

function Declined(Quest, QuestGiver, Player)
end

function Quest_Complete(Quest, QuestGiver, Player)
	UpdateQuestDescription(Quest, "I gave Ami's coat to her mother, Sua. Sua said she'd fix the buttons. I hope that stops Ami from crying.")
	GiveQuestReward(Quest, Player)
end

function Reload(Quest, QuestGiver, Player, Step)
end
